.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x8444, %rsi
lea addresses_normal_ht+0x1290c, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $14, %rcx
rep movsl
nop
dec %r15
lea addresses_WC_ht+0x13444, %rsi
lea addresses_WC_ht+0x1de44, %rdi
nop
dec %r9
mov $112, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $25550, %rdi
lea addresses_UC_ht+0x1c974, %rsi
lea addresses_normal_ht+0x162c4, %rdi
nop
dec %r12
mov $59, %rcx
rep movsb
nop
and $59999, %rcx
lea addresses_A_ht+0xd644, %rsi
lea addresses_A_ht+0xb6bc, %rdi
clflush (%rsi)
xor $21297, %r12
mov $29, %rcx
rep movsb
nop
nop
sub %r9, %r9
lea addresses_A_ht+0x1ef24, %r9
nop
xor $36290, %r15
movw $0x6162, (%r9)
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0x1a21c, %rsi
lea addresses_normal_ht+0x8944, %rdi
inc %r15
mov $21, %rcx
rep movsw
nop
nop
nop
and $36254, %r12
lea addresses_WC_ht+0x6e44, %rcx
nop
nop
nop
inc %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
cmp $65452, %r12
lea addresses_normal_ht+0x18eac, %r12
nop
nop
nop
nop
nop
lfence
movl $0x61626364, (%r12)
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x16644, %rsi
lea addresses_WT_ht+0x8344, %rdi
clflush (%rsi)
dec %r8
mov $105, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0xd104, %rsi
lea addresses_WC_ht+0x1347c, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %r11, %r11
mov $20, %rcx
rep movsq
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1384, %rsi
nop
xor %r9, %r9
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
cmp $27861, %r12
lea addresses_A_ht+0x19ce4, %r11
nop
nop
nop
nop
nop
dec %r9
movw $0x6162, (%r11)
nop
nop
sub $20945, %rsi
lea addresses_A_ht+0xa444, %r11
clflush (%r11)
nop
nop
nop
nop
nop
add $28119, %rsi
movb $0x61, (%r11)
sub %r8, %r8
lea addresses_normal_ht+0x11044, %rsi
lea addresses_WC_ht+0x12844, %rdi
nop
nop
inc %r15
mov $7, %rcx
rep movsq
nop
nop
cmp $20493, %r15
lea addresses_UC_ht+0x9d08, %r11
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, (%r11)
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_UC+0xe544, %rsi
lea addresses_WT+0x1cc44, %rdi
and %rbp, %rbp
mov $16, %rcx
rep movsq
nop
nop
add $25365, %rsi

// Store
mov $0x541a4f00000004c4, %rbp
sub %rdx, %rdx
movl $0x51525354, (%rbp)
xor %rcx, %rcx

// Store
lea addresses_A+0x1b984, %rsi
nop
nop
nop
cmp $26327, %rax
movw $0x5152, (%rsi)
sub $22808, %rax

// Faulty Load
mov $0xc44, %rsi
nop
sub %r15, %r15
vmovntdqa (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'00': 1}
00
*/
