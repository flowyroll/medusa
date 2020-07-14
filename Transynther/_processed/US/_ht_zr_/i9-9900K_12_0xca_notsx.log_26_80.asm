.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x6386, %rsi
lea addresses_WT_ht+0xe587, %rdi
and $47513, %rdx
mov $85, %rcx
rep movsl
xor $14953, %rax
lea addresses_UC_ht+0x14047, %r9
sub $38394, %rdx
movb (%r9), %al
xor $58794, %rcx
lea addresses_A_ht+0xe747, %rdx
sub %r10, %r10
movb $0x61, (%rdx)
nop
cmp $38544, %r9
lea addresses_WC_ht+0x15337, %rdx
nop
nop
nop
nop
sub %r10, %r10
vmovups (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0xc847, %rsi
lea addresses_A_ht+0x4547, %rdi
cmp %r15, %r15
mov $26, %rcx
rep movsq
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x1c24f, %r9
nop
nop
nop
xor %r10, %r10
movb $0x61, (%r9)
nop
nop
inc %r15
lea addresses_WT_ht+0xec97, %rdi
nop
nop
cmp $42590, %rcx
mov (%rdi), %rax
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0xcc47, %r15
nop
nop
cmp $16110, %r9
mov (%r15), %rdx
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x16547, %rsi
lea addresses_normal_ht+0xf77, %rdi
nop
sub %r9, %r9
mov $100, %rcx
rep movsl
nop
dec %rax
lea addresses_normal_ht+0xfc47, %r10
nop
nop
nop
nop
and $55134, %rcx
mov (%r10), %rsi
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x11c47, %rsi
add %r9, %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%rsi)
dec %rax
lea addresses_WT_ht+0x6bc7, %r9
nop
nop
nop
nop
xor %rdx, %rdx
movl $0x61626364, (%r9)
xor $9833, %rdi
lea addresses_UC_ht+0x12247, %rsi
nop
inc %r9
mov (%rsi), %ax
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0xdc07, %rsi
lea addresses_UC_ht+0x1c463, %rdi
nop
nop
xor $14541, %r15
mov $42, %rcx
rep movsq
cmp $10047, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0x1d447, %rdi
xor $51814, %r13
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'00': 24, '45': 2}
00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45
*/
