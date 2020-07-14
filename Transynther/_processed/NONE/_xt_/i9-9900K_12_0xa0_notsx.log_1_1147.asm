.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x107cc, %rbx
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x1a30c, %r9
sub %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm0
movups %xmm0, (%r9)
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x7c2b, %rax
nop
nop
nop
nop
xor %r9, %r9
movups (%rax), %xmm4
vpextrq $1, %xmm4, %rbp
nop
cmp $33909, %r9
lea addresses_WC_ht+0x5c7e, %rsi
nop
nop
nop
and %r9, %r9
mov (%rsi), %rax
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x30d8, %rsi
lea addresses_WC_ht+0x11456, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $1088, %r12
mov $30, %rcx
rep movsw
nop
sub $62820, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x15a3c, %rsi
lea addresses_normal+0x1aabc, %rdi
nop
cmp %r11, %r11
mov $21, %rcx
rep movsb
nop
add %rsi, %rsi

// Store
lea addresses_WC+0x6d3c, %r15
nop
and $17725, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r15)
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_WT+0xd48c, %rdi
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
sub %rbx, %rbx

// Load
mov $0x219459000000047c, %rbx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
vmovups (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
dec %r13

// Faulty Load
lea addresses_D+0x3e3c, %rbx
add %rcx, %rcx
movups (%rbx), %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'36': 1}
36
*/
