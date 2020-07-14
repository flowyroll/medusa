.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xaf06, %rsi
lea addresses_UC_ht+0x103aa, %rdi
dec %r8
mov $100, %rcx
rep movsq
sub %rsi, %rsi
lea addresses_D_ht+0x7d6c, %r12
clflush (%r12)
nop
xor %rdx, %rdx
vmovups (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x167a8, %r12
nop
nop
nop
nop
dec %r8
mov (%r12), %edi
nop
inc %rdx
lea addresses_normal_ht+0x1ea6c, %rcx
nop
nop
add $34711, %rbx
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x1a778, %rsi
lea addresses_WC_ht+0x596c, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $106, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x1426c, %rdi
nop
nop
sub $65038, %rdx
movb (%rdi), %bl
nop
nop
nop
add $47610, %rdx
lea addresses_D_ht+0x430c, %rbx
nop
nop
nop
dec %rsi
mov (%rbx), %rdx
nop
nop
nop
nop
nop
and $18563, %r8
lea addresses_UC_ht+0x10c6c, %rdi
nop
nop
cmp $60467, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
and $0xffffffffffffffc0, %rdi
movaps %xmm7, (%rdi)
nop
nop
nop
xor $21147, %rbx
lea addresses_A_ht+0x1e8e9, %r15
nop
nop
nop
nop
xor $44183, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x526c, %rdx
nop
nop
nop
xor %rsi, %rsi
mov (%rdx), %r8d
nop
inc %rsi
lea addresses_A_ht+0xe26c, %r12
nop
nop
xor %rdx, %rdx
movl $0x61626364, (%r12)
nop
nop
xor $14032, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1e26c, %r14
nop
dec %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movaps %xmm1, (%r14)
nop
nop
nop
and %r14, %r14

// Store
lea addresses_WC+0x626c, %rcx
xor %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, (%rcx)
nop
nop
nop
nop
sub $53500, %rcx

// Store
lea addresses_PSE+0x46c, %rdx
nop
sub $23627, %r13
movb $0x51, (%rdx)
nop
nop
dec %rdx

// Store
lea addresses_WC+0x3c, %rcx
nop
nop
nop
nop
add $64376, %rbp
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
nop
nop
sub %rcx, %rcx

// Store
lea addresses_WC+0x2154, %rcx
xor %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
nop
nop
nop
add $35485, %rbp

// Faulty Load
lea addresses_PSE+0x1e26c, %r11
nop
nop
nop
nop
nop
add $35511, %rcx
mov (%r11), %bp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'58': 3}
58 58 58
*/
