.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7c0f, %r11
nop
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
nop
xor $28116, %rsi
lea addresses_D_ht+0x1aec3, %rsi
lea addresses_UC_ht+0x18823, %rdi
nop
nop
nop
nop
nop
and $40876, %r15
mov $94, %rcx
rep movsq
sub %r8, %r8
lea addresses_WC_ht+0x1efe3, %rbp
nop
xor %r8, %r8
movups (%rbp), %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x341f, %rbp
clflush (%rbp)
nop
nop
nop
nop
and $29908, %rdi
mov (%rbp), %ecx
nop
nop
dec %rbp
lea addresses_UC_ht+0x97a3, %rsi
lea addresses_normal_ht+0x1e2a3, %rdi
nop
nop
nop
inc %r11
mov $92, %rcx
rep movsq
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x253b, %rsi
lea addresses_WT_ht+0x52ae, %rdi
nop
nop
nop
sub %r11, %r11
mov $50, %rcx
rep movsb
nop
nop
add $53462, %rbp
lea addresses_D_ht+0x149c3, %r15
nop
nop
nop
xor %rdi, %rdi
movb $0x61, (%r15)
inc %r15
lea addresses_UC_ht+0x23a3, %rsi
lea addresses_UC_ht+0x6f43, %rdi
clflush (%rdi)
nop
dec %rbx
mov $12, %rcx
rep movsb
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x128c3, %rdi
cmp %rbx, %rbx
movb $0x61, (%rdi)
nop
nop
and $23335, %r8
lea addresses_WC_ht+0xb2c3, %r8
clflush (%r8)
nop
add $12685, %r11
vmovups (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
nop
sub $49259, %r15
lea addresses_WT_ht+0x5ce6, %rsi
nop
nop
nop
nop
nop
sub $65286, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm3
and $0xffffffffffffffc0, %rsi
vmovaps %ymm3, (%rsi)
nop
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x1c2c3, %rdi
nop
nop
dec %rcx
movw $0x6162, (%rdi)
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x111e7, %rdi
nop
nop
nop
sub %rsi, %rsi
mov (%rdi), %ecx
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0xf103, %rsi
lea addresses_PSE+0x18fa3, %rdi
add $39055, %rdx
mov $21, %rcx
rep movsl
nop
nop
inc %r11

// Faulty Load
mov $0x2594400000002c3, %rsi
nop
nop
dec %r15
movb (%rsi), %r11b
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_RW'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_PSE'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
