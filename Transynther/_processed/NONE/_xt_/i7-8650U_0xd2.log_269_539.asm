.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1c6b7, %rdx
nop
nop
nop
cmp $39416, %rcx
movw $0x6162, (%rdx)
nop
nop
nop
add $41996, %r12
lea addresses_WC_ht+0x1bb57, %rsi
lea addresses_UC_ht+0x1323b, %rdi
clflush (%rsi)
clflush (%rdi)
inc %r11
mov $87, %rcx
rep movsb
add %rcx, %rcx
lea addresses_A_ht+0x15f97, %rcx
nop
nop
nop
nop
xor $21047, %rdx
movb (%rcx), %r11b
nop
nop
nop
dec %r11
lea addresses_WC_ht+0x5bb7, %r15
clflush (%r15)
nop
sub $46215, %r11
mov (%r15), %dx
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbx

// Store
lea addresses_WT+0x173b7, %rax
nop
and %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
dec %r8

// Store
lea addresses_A+0xe7b7, %r9
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%r9)
nop
sub $8766, %r11

// Load
mov $0x2171e80000000db7, %r14
nop
nop
nop
and %rax, %rax
vmovaps (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r11
nop
and $23463, %rbx

// Load
lea addresses_US+0x1df7, %r11
nop
cmp $16745, %rax
movb (%r11), %r9b
nop
nop
nop
nop
nop
dec %r14

// Faulty Load
lea addresses_RW+0x10bb7, %r11
nop
nop
nop
nop
nop
add $52302, %r13
vmovups (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'32': 269}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
