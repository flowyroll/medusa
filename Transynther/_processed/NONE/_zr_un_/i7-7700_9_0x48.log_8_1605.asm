.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rbp
push %rdi
push %rsi
lea addresses_UC_ht+0xd9fc, %rdi
nop
nop
nop
cmp $21309, %rsi
mov (%rdi), %bp
nop
nop
sub %r12, %r12
pop %rsi
pop %rdi
pop %rbp
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_US+0x96d4, %rax
clflush (%rax)
nop
nop
nop
nop
cmp $32406, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%rax)

// Exception!!!
nop
nop
mov (0), %rdx
nop
nop
nop
cmp $34964, %rcx

// Faulty Load
lea addresses_A+0x193fc, %rdi
nop
nop
nop
dec %r15
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'08': 4, '72': 1, '00': 3}
00 08 08 00 72 00 08 08
*/
