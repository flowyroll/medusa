.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x5016, %rsi
lea addresses_WC_ht+0x3b16, %rdi
nop
nop
nop
nop
nop
add $64571, %r11
mov $45, %rcx
rep movsb
nop
nop
cmp $47467, %rbp
lea addresses_WT_ht+0xd716, %rsi
lea addresses_WC_ht+0x1db16, %rdi
nop
nop
dec %r9
mov $87, %rcx
rep movsb
nop
add $34890, %rcx
lea addresses_WT_ht+0x1c716, %rdi
nop
nop
nop
add %r9, %r9
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0xe6fe, %rsi
lea addresses_WT_ht+0x1ac3a, %rdi
nop
nop
nop
nop
nop
and $35458, %rbx
mov $60, %rcx
rep movsl
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x1e0ae, %rbp
sub %rbx, %rbx
mov (%rbp), %r11w
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0x10056, %rbp
dec %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x6b16, %rsi
lea addresses_A+0x8316, %rdi
nop
cmp $37733, %r13
mov $99, %rcx
rep movsw
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_WT+0xc316, %r13
nop
cmp %rdx, %rdx
movb $0x51, (%r13)
sub %r15, %r15

// Store
lea addresses_D+0xaf16, %r13
nop
nop
nop
xor %rcx, %rcx
movw $0x5152, (%r13)
nop
and %rsi, %rsi

// Load
lea addresses_UC+0xb16, %r15
sub %r14, %r14
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
add $2741, %r15

// Store
lea addresses_WC+0x16116, %r14
clflush (%r14)
nop
nop
cmp $20100, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
nop
cmp $48178, %rsi

// Store
lea addresses_PSE+0x1f9a6, %rcx
nop
nop
nop
sub $32236, %r13
movb $0x51, (%rcx)
nop
nop
and $53888, %rdi

// Load
lea addresses_UC+0x13496, %rsi
nop
nop
and %r13, %r13
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
add $28841, %r14

// Load
lea addresses_PSE+0x12e5a, %rdx
nop
nop
nop
nop
and %rsi, %rsi
vmovups (%rdx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
nop
dec %r13

// Store
lea addresses_WT+0xc316, %r15
nop
nop
nop
nop
sub $2385, %rcx
movw $0x5152, (%r15)
nop
and $63189, %r14

// Store
lea addresses_A+0xc3e, %rdx
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm0
movups %xmm0, (%rdx)
add %r15, %r15

// Store
lea addresses_D+0x1e8d6, %r14
nop
nop
nop
nop
nop
cmp $53711, %rsi
movb $0x51, (%r14)
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_D+0x1ac84, %rdx
nop
nop
xor %rdi, %rdi
movl $0x51525354, (%rdx)
dec %r14

// Store
lea addresses_D+0x16716, %rcx
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%rcx)
cmp %rdx, %rdx

// Store
lea addresses_A+0x4f96, %rsi
nop
nop
nop
nop
sub $6748, %rcx
movw $0x5152, (%rsi)
nop
and %rsi, %rsi

// Faulty Load
lea addresses_WT+0xc316, %r14
nop
xor $2062, %rdi
mov (%r14), %esi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': True, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
