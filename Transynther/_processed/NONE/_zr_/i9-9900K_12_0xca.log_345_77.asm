.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x15a5c, %rsi
lea addresses_UC_ht+0x944, %rdi
nop
add $46468, %rax
mov $58, %rcx
rep movsw
nop
cmp %rax, %rax
lea addresses_WC_ht+0x313c, %rsi
cmp %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
nop
inc %r10
lea addresses_WC_ht+0x1c93c, %rcx
nop
inc %rax
movl $0x61626364, (%rcx)
nop
add %rax, %rax
lea addresses_normal_ht+0xd032, %rsi
nop
nop
nop
inc %r13
movb (%rsi), %cl
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0xd93c, %r13
nop
nop
mfence
movb (%r13), %cl
nop
cmp $40600, %rdx
lea addresses_WT_ht+0x1267c, %r13
xor %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r13)
nop
nop
sub $33892, %rdx
lea addresses_UC_ht+0x1b43c, %rdi
nop
nop
cmp %rsi, %rsi
movb $0x61, (%rdi)
nop
add $64887, %rdx
lea addresses_UC_ht+0x1ab0c, %rsi
lea addresses_A_ht+0x1593c, %rdi
nop
xor $46592, %r10
mov $67, %rcx
rep movsw
nop
nop
nop
nop
cmp $15779, %rsi
lea addresses_normal_ht+0x5c3c, %rsi
lea addresses_WC_ht+0x8fcc, %rdi
nop
sub $54633, %r10
mov $58, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $57350, %rdi
lea addresses_A_ht+0x545c, %rsi
lea addresses_A_ht+0x893c, %rdi
add $34671, %rax
mov $12, %rcx
rep movsb
nop
nop
nop
cmp $61888, %r10
lea addresses_WT_ht+0x713c, %rdi
and %rsi, %rsi
movl $0x61626364, (%rdi)
inc %rax
lea addresses_normal_ht+0xf84b, %rsi
lea addresses_WC_ht+0x15d5c, %rdi
xor %r15, %r15
mov $74, %rcx
rep movsl
xor %rsi, %rsi
lea addresses_UC_ht+0xb93c, %rsi
lea addresses_WC_ht+0x1a6e4, %rdi
nop
nop
nop
inc %r10
mov $23, %rcx
rep movsl
nop
sub $36800, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x1413c, %rsi
lea addresses_normal+0x135bc, %rdi
nop
sub %r11, %r11
mov $54, %rcx
rep movsq
xor $45820, %rsi

// Faulty Load
lea addresses_A+0x713c, %r11
nop
and %rbx, %rbx
mov (%r11), %cx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal', 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'00': 345}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
