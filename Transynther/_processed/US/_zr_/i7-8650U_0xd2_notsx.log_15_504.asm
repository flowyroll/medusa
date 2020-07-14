.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rbx
push %rcx
lea addresses_normal_ht+0x12528, %rbx
nop
nop
nop
nop
nop
sub $1063, %r8
mov (%rbx), %cx
nop
nop
nop
nop
nop
add $23846, %r15
pop %rcx
pop %rbx
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WC+0x1451a, %rcx
xor $12677, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_D+0x100a8, %r9
nop
nop
nop
nop
nop
sub $29764, %rbp
movl $0x51525354, (%r9)
nop
nop
nop
add %rax, %rax

// Load
lea addresses_PSE+0x1c2d0, %rax
sub %r11, %r11
mov (%rax), %ecx
nop
add $15114, %rbp

// Store
lea addresses_normal+0x3d28, %rbp
dec %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movntdq %xmm2, (%rbp)
nop
dec %rcx

// Faulty Load
lea addresses_US+0x4528, %r9
nop
and %r10, %r10
mov (%r9), %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 15}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
