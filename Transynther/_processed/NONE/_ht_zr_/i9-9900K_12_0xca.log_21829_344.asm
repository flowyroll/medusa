.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a95d, %rsi
lea addresses_WC_ht+0xcc7e, %rdi
clflush (%rsi)
nop
nop
dec %r12
mov $66, %rcx
rep movsl
dec %rcx
lea addresses_A_ht+0x197ae, %rbp
nop
nop
nop
nop
nop
inc %r8
movl $0x61626364, (%rbp)
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1c52e, %r8
nop
nop
inc %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm1
and $0xffffffffffffffc0, %r8
movntdq %xmm1, (%r8)
nop
nop
nop
nop
sub $37242, %rsi
lea addresses_WC_ht+0xbfae, %rdi
nop
nop
nop
xor $44938, %rax
movb $0x61, (%rdi)
sub %rcx, %rcx
lea addresses_UC_ht+0x11591, %rsi
lea addresses_normal_ht+0x19e2e, %rdi
nop
cmp $5577, %r11
mov $26, %rcx
rep movsw
nop
nop
nop
nop
and $58453, %r8
lea addresses_A_ht+0x1e82e, %rsi
lea addresses_UC_ht+0x15bae, %rdi
nop
dec %r11
mov $11, %rcx
rep movsw
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0xca80, %rdi
cmp $15823, %rax
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %r12
cmp $14787, %r12
lea addresses_UC_ht+0xc232, %rbp
inc %rdi
movb (%rbp), %cl
cmp %r11, %r11
lea addresses_A_ht+0x8b7e, %rsi
lea addresses_WC_ht+0xbc8e, %rdi
nop
nop
nop
nop
nop
cmp $9879, %r12
mov $100, %rcx
rep movsq
nop
nop
nop
nop
and $8500, %rdi
lea addresses_A_ht+0x1702e, %rsi
nop
inc %r11
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x1a2bb, %rax
nop
nop
nop
and $35654, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rax)
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0xf26e, %r8
nop
nop
nop
nop
nop
sub $23863, %rax
movb $0x61, (%r8)
nop
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rbx
push %rcx
push %rdx

// Faulty Load
lea addresses_WT+0x3ae, %rcx
nop
nop
add $2609, %r15
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'45': 2, '00': 6726, '48': 15101}
00 48 48 00 48 00 48 00 48 00 48 00 48 48 48 00 48 00 00 48 48 48 48 00 48 48 48 48 48 00 48 00 48 48 00 00 48 48 00 48 00 00 48 00 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 00 00 00 00 48 48 00 48 00 48 48 00 00 00 48 48 48 48 48 00 48 00 48 00 48 48 48 00 48 00 48 48 00 48 48 48 48 00 48 48 48 00 00 00 48 48 48 48 00 48 00 48 00 48 48 48 48 48 48 48 00 00 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 00 00 48 48 48 48 00 48 00 00 00 48 48 00 48 00 48 48 00 48 00 00 48 00 48 00 48 48 00 00 48 48 48 48 48 48 48 48 00 48 48 00 48 00 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 48 48 48 48 48 48 48 48 00 48 48 00 00 48 00 48 00 00 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 00 48 00 48 00 00 00 48 00 48 48 48 48 00 00 00 48 48 00 48 48 48 00 48 00 00 48 00 48 00 48 00 48 00 00 00 48 00 48 48 48 48 48 48 48 00 48 48 48 00 48 00 48 00 48 48 00 48 48 00 00 00 48 48 48 48 48 00 48 48 48 00 48 48 48 00 48 00 00 48 48 00 48 00 48 00 48 00 48 48 48 48 48 48 00 48 00 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 00 48 00 48 48 48 48 00 48 48 00 48 00 48 48 48 48 48 48 48 00 48 00 48 00 48 48 48 48 48 00 48 00 48 48 48 00 48 48 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 48 00 48 48 48 48 48 48 48 48 48 00 00 48 48 00 48 48 48 48 48 48 00 48 48 00 00 48 00 00 48 00 48 00 48 00 48 48 48 00 48 48 48 48 00 48 00 48 00 48 48 00 48 48 48 00 00 48 00 48 00 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 00 00 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 00 48 00 48 48 00 48 00 00 48 00 00 00 48 48 48 00 00 48 00 00 48 00 00 00 48 48 00 48 00 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 48 48 00 00 00 00 48 48 48 48 48 00 48 00 48 48 00 00 48 00 48 48 48 48 48 00 48 00 00 48 00 48 48 48 00 48 00 48 00 48 48 00 48 48 00 00 48 00 48 48 48 00 48 48 48 00 48 00 00 48 48 48 48 48 48 48 48 00 48 48 48 00 48 00 48 00 48 00 00 48 00 00 00 00 48 00 48 00 48 00 48 00 48 48 48 00 00 48 00 48 00 48 48 00 48 00 48 00 48 00 48 48 00 00 48 48 48 48 48 00 48 48 00 48 48 48 48 48 00 00 48 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 00 00 48 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 00 00 48 48 00 48 48 00 48 00 48 00 48 48 48 48 48 48 00 48 48 00 48 00 48 00 00 48 00 48 00 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 48 48 48 00 48 00 48 48 48 48 00 00 48 00 00 48 00 48 48 48 00 48 48 00 00 48 48 48 00 48 48 48 00 00 00 48 00 48 48 48 48 48 48 48 48 00 48 48 00 48 00 48 48 48
*/
