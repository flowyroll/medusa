.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xece9, %rcx
clflush (%rcx)
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %r8
movq %r8, (%rcx)
nop
nop
nop
nop
nop
sub $13619, %r11
lea addresses_WT_ht+0x8322, %r11
nop
nop
nop
nop
nop
xor $36594, %rax
mov (%r11), %rbx
cmp $51417, %rbp
lea addresses_UC_ht+0x39cc, %rcx
nop
nop
nop
nop
nop
and %r14, %r14
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
sub $18987, %rcx
lea addresses_D_ht+0x79a9, %r11
nop
nop
nop
nop
nop
cmp $33921, %rbp
movups (%r11), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
cmp $41026, %r11
lea addresses_D_ht+0x1a9c7, %rcx
nop
nop
xor $44252, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rcx)
nop
and $4305, %rcx
lea addresses_WC_ht+0x14ed7, %rsi
lea addresses_WC_ht+0xb229, %rdi
sub $10776, %r14
mov $92, %rcx
rep movsw
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x172e9, %rsi
nop
nop
add %r14, %r14
movb (%rsi), %cl
nop
nop
sub %r8, %r8
lea addresses_A_ht+0x5779, %rbp
cmp %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
cmp $31498, %rbp
lea addresses_UC_ht+0x11ee9, %rsi
lea addresses_WT_ht+0x18a1d, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r14, %r14
mov $31, %rcx
rep movsq
nop
nop
nop
nop
nop
add $40058, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rdx
push %rsi

// Faulty Load
lea addresses_D+0xd0e9, %r11
nop
xor %r8, %r8
vmovaps (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rsi
pop %rdx
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'46': 3, '00': 3280, '48': 3964}
00 48 48 48 48 00 00 48 48 00 00 48 48 00 00 00 48 48 48 48 48 00 00 00 00 00 00 48 48 48 00 48 48 48 00 48 48 48 48 00 00 00 48 48 48 00 00 00 48 00 48 48 00 00 48 00 48 48 00 48 00 48 48 00 00 00 48 48 48 48 00 00 00 00 48 48 48 48 00 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 00 48 00 00 00 48 48 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 48 00 48 48 48 48 48 00 48 48 00 00 00 48 00 48 48 00 00 00 48 00 00 00 48 48 48 48 00 48 00 48 48 00 48 48 48 00 00 00 48 00 00 00 00 48 48 48 48 48 48 00 00 00 48 48 00 48 00 48 48 00 00 48 00 48 00 48 48 00 48 48 48 00 00 00 48 00 00 48 48 48 00 00 00 00 00 48 48 00 00 48 48 00 48 00 48 00 00 00 00 00 48 48 48 48 48 00 48 48 00 48 48 48 48 48 00 48 48 00 00 48 48 00 00 00 48 00 00 00 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 00 00 00 48 48 00 00 48 00 48 48 00 00 48 00 48 48 48 48 00 48 00 00 00 48 48 00 00 00 48 48 00 48 00 48 48 00 00 48 48 00 48 48 48 48 00 00 00 48 00 48 00 00 48 00 00 00 48 48 00 00 48 48 00 00 48 48 00 00 00 48 00 48 48 48 48 00 00 00 00 00 48 48 48 48 48 48 00 48 48 48 00 48 00 00 00 48 00 48 00 00 48 00 48 48 00 48 00 00 00 00 00 48 48 00 48 48 00 48 00 00 00 48 00 48 00 00 00 48 48 00 48 48 48 48 00 00 48 00 48 00 48 48 00 48 00 00 00 00 48 00 00 48 00 00 48 48 48 00 48 48 48 48 00 00 00 00 00 00 00 48 48 48 00 00 00 48 48 48 48 00 48 48 00 48 00 48 48 00 00 00 00 00 00 48 00 00 00 48 48 48 48 00 00 48 48 00 48 48 48 48 48 48 00 48 48 48 48 00 00 48 00 48 00 00 00 00 48 00 00 48 48 00 48 00 48 00 48 48 48 00 48 48 48 48 00 48 00 48 00 00 48 00 00 48 00 00 48 48 00 48 00 00 00 00 00 48 48 48 00 00 48 48 00 48 48 00 48 48 48 00 00 00 48 48 00 48 00 00 48 48 00 48 00 48 00 48 48 00 48 00 48 48 00 48 48 48 48 00 48 48 00 00 00 48 48 48 00 00 00 48 48 00 00 48 48 48 00 48 48 48 48 00 00 00 00 48 00 48 48 48 00 48 00 00 48 00 00 48 00 00 48 00 48 00 48 48 00 00 48 48 00 00 00 00 00 48 48 00 00 00 48 00 00 00 00 48 48 00 48 48 48 48 00 00 00 00 00 48 00 00 00 48 48 48 00 00 48 00 48 48 00 00 00 00 48 48 48 00 00 48 48 00 00 48 48 48 00 00 48 00 48 48 48 48 48 00 48 00 48 00 48 48 48 48 00 48 00 48 00 00 48 00 00 00 00 00 00 48 48 48 48 48 48 48 00 48 48 48 48 00 00 00 00 48 00 00 48 48 00 00 48 00 00 00 00 00 00 48 48 00 00 00 48 48 48 00 48 00 48 48 48 00 48 48 48 48 48 48 00 00 00 00 00 48 00 48 48 00 00 00 48 48 00 00 48 00 00 48 00 00 48 00 48 48 48 00 00 00 48 48 48 48 48 00 48 00 48 48 48 00 48 48 48 48 00 00 48 48 00 48 48 00 00 48 00 00 48 00 00 00 48 48 48 48 00 00 48 48 48 48 00 48 00 48 48 48 48 48 00 48 00 00 48 00 48 48 48 00 00 00 00 00 00 00 00 00 48 48 00 48 48 00 48 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 48 48 00 48 48 00 48 48 48 48 48 00 00 00 48 00 48 48 48 48 48 00 48 48 00 48 00 00 48 48 48 48 00 48 48 48 48 48 00 00 00 00 00 48 48 00 48 48 00 00 48 00 00 00 00 00 00 00 48 48 48 48 48 00 48 48 00 00 00 00 48 48 48 48 48 00 00 48 00 00 48 00 48 00 00 00 00 48 00 00 48 48 48 00 48 48 48 48 48 00 00 00 48
*/
