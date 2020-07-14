.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x11d41, %r15
cmp %r11, %r11
movw $0x6162, (%r15)
xor %r12, %r12
lea addresses_D_ht+0x4dc1, %rcx
nop
and $10548, %rbp
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
cmp $28122, %rbp
lea addresses_A_ht+0x2733, %rcx
sub %rbp, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
nop
and $18291, %r11
lea addresses_D_ht+0xa9c5, %r15
nop
nop
nop
nop
xor %rbx, %rbx
movb $0x61, (%r15)
nop
nop
nop
nop
cmp $1662, %r12
lea addresses_UC_ht+0x1cbad, %r12
nop
nop
nop
dec %r15
mov (%r12), %ecx
nop
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x13e41, %rsi
lea addresses_WT_ht+0x8981, %rdi
nop
nop
nop
nop
nop
add $29653, %r15
mov $0, %rcx
rep movsq
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xfac1, %rsi
lea addresses_WC_ht+0x13dc1, %rdi
nop
sub %rbx, %rbx
mov $109, %rcx
rep movsl
nop
nop
and $341, %r11
lea addresses_WC_ht+0xeec1, %rsi
lea addresses_normal_ht+0x1d501, %rdi
nop
nop
nop
inc %rbp
mov $33, %rcx
rep movsq
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rax
push %rbx
push %rdi
push %rsi

// Store
mov $0x36f4c400000006b1, %rsi
nop
and %rax, %rax
movw $0x5152, (%rsi)
nop
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_A+0x174c1, %rdi
nop
nop
sub %rbx, %rbx
vmovups (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'00': 5}
00 00 00 00 00
*/
