.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
lea addresses_UC_ht+0x114ba, %rcx
cmp $49436, %rdi
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
nop
nop
nop
cmp $26513, %rbp
lea addresses_UC_ht+0x349a, %rdx
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rdx)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x71d2, %r10
nop
nop
nop
nop
nop
sub $50010, %rbp
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm5
vpextrq $0, %xmm5, %rdi
nop
and %rdi, %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rbp

// Faulty Load
mov $0x4687a30000000a9a, %r11
and %r10, %r10
movups (%r11), %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rbp
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'00': 181}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
