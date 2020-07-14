.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rdi
push %rdx
lea addresses_D_ht+0xb91d, %rbp
add %rbx, %rbx
movl $0x61626364, (%rbp)
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x7260, %rdi
nop
sub $27991, %rbp
mov $0x6162636465666768, %r14
movq %r14, (%rdi)
nop
nop
nop
nop
dec %r11
lea addresses_UC_ht+0x6c2d, %r14
nop
nop
nop
nop
nop
sub $33963, %rdx
mov (%r14), %ax
nop
nop
nop
nop
nop
sub $59124, %rax
lea addresses_D_ht+0x19e0d, %r14
add $35451, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r14)
nop
nop
and $57536, %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rdx

// Faulty Load
mov $0x50d, %r9
nop
nop
nop
nop
xor %r11, %r11
mov (%r9), %r10d
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rdx
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'00': 58}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
