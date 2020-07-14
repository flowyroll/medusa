.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rbx
push %rdx
lea addresses_A_ht+0x403f, %rbx
nop
nop
nop
nop
nop
sub $52113, %rdx
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm6
vpextrq $0, %xmm6, %r15
nop
sub $35714, %r9
lea addresses_D_ht+0x1e51f, %r11
nop
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, (%r11)
nop
add $1924, %r13
lea addresses_UC_ht+0xa05f, %rbx
nop
nop
nop
inc %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%rbx)
dec %r13
lea addresses_normal_ht+0x114bf, %r14
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%r14)
cmp %r15, %r15
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rcx

// Store
mov $0xf8f, %rcx
sub $15212, %rbx
movl $0x51525354, (%rcx)
nop
nop
nop
dec %r15

// Faulty Load
lea addresses_A+0x3fbf, %r8
nop
nop
nop
nop
inc %rax
mov (%r8), %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'53': 35, 'b2': 1, '45': 1627, 'd0': 16, '00': 9759, '01': 8, '90': 1046, 'cd': 17, 'ff': 9320}
d0 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 45 ff 90 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 00 ff 00 ff 90 ff 00 ff 00 ff 90 ff 00 ff 00 ff 00 00 45 ff 00 ff 00 ff 00 ff 90 00 ff 00 45 ff 00 ff 00 00 ff 00 45 45 ff 00 ff 00 ff 00 ff 00 ff 90 ff 00 00 00 ff 00 ff 00 00 00 45 45 45 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 45 45 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 45 ff 00 ff 00 ff 00 ff 00 00 00 45 ff 00 ff 90 45 45 ff 00 45 ff 00 45 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 45 45 ff 90 ff 00 ff 00 ff 00 ff 00 ff 00 45 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 45 45 ff 00 ff 00 ff 00 ff 00 00 ff 90 ff 00 ff 00 00 ff 00 45 ff 00 ff 00 ff 00 00 00 ff 00 ff 00 00 ff 00 ff 00 ff 90 ff 00 ff 00 45 ff 00 00 45 45 45 45 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 45 ff 00 ff 00 ff 90 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 45 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 00 ff 00 45 45 ff 00 ff 00 ff 00 45 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 45 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 45 ff 00 ff 00 ff 90 00 45 ff 00 ff 00 ff 00 ff 90 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 90 ff 00 ff 00 45 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 90 45 ff 00 00 ff 00 ff 00 45 ff 00 ff 00 ff 00 ff 90 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 90 ff 00 ff 90 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 45 ff 00 00 ff 00 ff 00 ff 00 ff 90 ff 00 00 ff 00 ff 00 ff 00 45 ff 00 ff 00 ff 00 ff 00 ff 00 ff 90 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 00 00 00 00 ff 00 ff 00 ff 00 ff 00 45 ff 00 ff 00 ff 00 45 45 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 45 ff 00 ff 00 ff 00 ff 00 ff 00 45 ff 00 00 ff 00 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 45 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 45 ff 00 ff 00 ff 00 00 ff 00 ff 00 45 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 45 ff 00 ff 00 00 ff 00 45 ff 00 45 45 ff 00 45 ff 00 00 ff 00 ff 00 00 ff 90 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 45 45 ff 00 ff 00 ff 00 ff 00 00 ff 00 45 ff 00 00 45 ff 00 ff 00 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 45 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 45 45 ff 00 00 ff 00 45 ff 00 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 45 ff 00 ff 00 ff 00 ff 00 90 ff 90 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 45 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 45 00 45 ff 00 45 ff 00 45 45 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 00 ff 00 ff 00 45 ff 90 ff 00 ff 00 00 ff 00 ff 00 ff 00 45 ff 00 ff 00 45 ff 00 ff 00 45 ff 00 ff 00 ff 00 00 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff
*/
