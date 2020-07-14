.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1bd19, %rsi
lea addresses_A_ht+0x1119, %rdi
nop
nop
nop
nop
add $10381, %rbx
mov $96, %rcx
rep movsb
nop
nop
nop
xor $12061, %r12
lea addresses_WT_ht+0x1e4ef, %rbp
nop
nop
nop
nop
sub $63077, %rcx
mov (%rbp), %esi
nop
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xb9d9, %r14
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r14)
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_US+0xc519, %r9
nop
nop
nop
nop
xor %r8, %r8
movl $0x51525354, (%r9)
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_US+0xc519, %r11
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movntdq %xmm3, (%r11)
cmp $7116, %r9

// Store
lea addresses_D+0xb39, %r9
clflush (%r9)
nop
nop
nop
nop
nop
sub $64303, %r14
movb $0x51, (%r9)
xor $6338, %r9

// Store
lea addresses_US+0x6569, %r8
cmp %rdx, %rdx
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
inc %rdx

// Store
lea addresses_US+0xc519, %r9
xor %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, (%r9)
nop
xor $42583, %rsi

// Faulty Load
lea addresses_US+0xc519, %r11
nop
nop
nop
nop
dec %r14
mov (%r11), %si
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': True}}
{'58': 23}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
