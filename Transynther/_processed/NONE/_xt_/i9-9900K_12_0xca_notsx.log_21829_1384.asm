.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb1f1, %r14
nop
nop
nop
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%r14)
nop
nop
cmp $22360, %r12
lea addresses_D_ht+0x1a29, %rax
nop
lfence
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rax)
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x1dda0, %r14
nop
nop
nop
nop
nop
xor %r11, %r11
mov (%r14), %rdi
nop
nop
nop
add $33393, %r13
lea addresses_UC_ht+0xd1a6, %rax
nop
add %r14, %r14
movl $0x61626364, (%rax)
nop
nop
nop
nop
add $15086, %rax
lea addresses_normal_ht+0x1481, %rdi
dec %rsi
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x1a9b1, %rsi
lea addresses_WC_ht+0x129b1, %rdi
nop
sub %r14, %r14
mov $116, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r12
lea addresses_UC_ht+0x10fa1, %rsi
nop
nop
and %rcx, %rcx
movw $0x6162, (%rsi)
cmp %r12, %r12
lea addresses_D_ht+0x12d4a, %rax
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rax), %r13
nop
nop
nop
xor $26767, %rax
lea addresses_UC_ht+0x177dd, %rdi
nop
add %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
dec %r12
lea addresses_WT_ht+0x1ab1, %r12
add $64994, %rax
movw $0x6162, (%r12)
nop
nop
nop
and $58747, %rcx
lea addresses_normal_ht+0xfab1, %r11
nop
cmp %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, (%r11)
nop
add $48206, %rcx
lea addresses_normal_ht+0x19cb1, %r11
nop
add %r12, %r12
movups (%r11), %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
and %r14, %r14
lea addresses_WC_ht+0x176b1, %r11
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
and %r13, %r13
lea addresses_D_ht+0x93b1, %rcx
nop
xor %r13, %r13
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x196b1, %rsi
lea addresses_D+0x14eb1, %rdi
dec %r13
mov $59, %rcx
rep movsl
xor %r9, %r9

// REPMOV
lea addresses_PSE+0x2e71, %rsi
lea addresses_UC+0x10eb1, %rdi
clflush (%rsi)
nop
mfence
mov $25, %rcx
rep movsq
and %r13, %r13

// Store
mov $0x17e72300000001b1, %rsi
nop
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_A+0x14d31, %rsi
nop
nop
xor $28320, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%rsi)
nop
xor $8273, %r8

// Store
lea addresses_WC+0xf031, %rcx
and $53861, %r8
movl $0x51525354, (%rcx)
nop
sub $49328, %r11

// Faulty Load
lea addresses_normal+0x196b1, %r11
nop
nop
nop
nop
nop
inc %rsi
movb (%r11), %r13b
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
