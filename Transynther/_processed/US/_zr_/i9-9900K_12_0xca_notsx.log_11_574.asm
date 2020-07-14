.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x121b9, %r12
add %rdx, %rdx
mov (%r12), %eax
nop
nop
nop
nop
nop
add $37201, %r12
lea addresses_normal_ht+0xf9b9, %r14
xor $21206, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x16039, %r12
sub $64297, %r9
movb (%r12), %r14b
cmp %rax, %rax
lea addresses_A_ht+0x45b9, %r12
clflush (%r12)
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r12)
nop
and $52011, %rax
lea addresses_WT_ht+0xfab9, %rsi
lea addresses_D_ht+0xa6b9, %rdi
dec %r9
mov $15, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $35419, %r9
lea addresses_UC_ht+0x10c81, %rsi
lea addresses_WC_ht+0x1dab9, %rdi
nop
sub $58289, %rax
mov $42, %rcx
rep movsq
dec %rcx
lea addresses_WT_ht+0x76e9, %rsi
lea addresses_normal_ht+0x19fcd, %rdi
nop
nop
nop
nop
nop
mfence
mov $19, %rcx
rep movsl
nop
add $21502, %r12
lea addresses_WC_ht+0x18a69, %rax
clflush (%rax)
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
add %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rbp
push %rcx

// Faulty Load
lea addresses_US+0x106b9, %r11
nop
nop
nop
nop
nop
cmp %r10, %r10
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
