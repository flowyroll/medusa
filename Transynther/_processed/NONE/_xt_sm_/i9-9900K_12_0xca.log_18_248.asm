.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbx
lea addresses_D_ht+0x15375, %r11
nop
nop
nop
nop
nop
and $48506, %r10
movb $0x61, (%r11)
sub %r14, %r14
pop %rbx
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdx

// Store
lea addresses_D+0x1a5a5, %r10
nop
nop
cmp %r11, %r11
movw $0x5152, (%r10)
nop
nop
inc %r15

// Store
mov $0x95d, %rcx
nop
xor $57655, %rdx
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_RW+0x178b5, %rdx
nop
nop
nop
nop
nop
and $46219, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rdx)
and $54334, %r14

// Faulty Load
lea addresses_RW+0x178b5, %r14
clflush (%r14)
nop
nop
xor $12963, %r10
movb (%r14), %r15b
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rdx
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'58': 18}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
