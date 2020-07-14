.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x14ede, %r10
nop
add $42047, %rdi
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x7406, %r8
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%r8), %cx
cmp $25481, %rbp
lea addresses_UC_ht+0x13856, %rcx
nop
nop
nop
nop
nop
xor $40366, %rdi
mov (%rcx), %r10w
nop
nop
sub $64586, %r8
lea addresses_D_ht+0x1638e, %r10
nop
nop
nop
nop
nop
and $49664, %rsi
mov $0x6162636465666768, %r15
movq %r15, (%r10)
nop
nop
nop
nop
cmp $38136, %rbp
lea addresses_UC_ht+0xecde, %rsi
lea addresses_D_ht+0x1695e, %rdi
nop
xor %r10, %r10
mov $97, %rcx
rep movsl
nop
nop
add %r8, %r8
lea addresses_D_ht+0x1a8de, %rcx
nop
nop
nop
add $49177, %rbp
movl $0x61626364, (%rcx)
nop
nop
nop
sub $35077, %rbp
lea addresses_WT_ht+0x1ccde, %rsi
nop
sub $31312, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x18e80, %rcx
nop
nop
nop
nop
nop
and $45340, %r8
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbp
and $58755, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rcx
push %rdi

// Faulty Load
lea addresses_WT+0xcede, %rcx
nop
nop
nop
nop
xor %rdi, %rdi
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdi
pop %rcx
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'44': 34, '00': 6311, '48': 15484}
48 48 48 48 00 48 48 00 48 48 00 00 48 00 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 48 00 48 00 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 00 48 48 00 48 48 00 48 48 48 48 48 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 44 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 00 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 44 48 48 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 00 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 00 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 00 00 48 48 00 48 48 00 48 48 00 00 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 00 48 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 00 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 00 00 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 00
*/
