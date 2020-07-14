.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x215e, %rsi
lea addresses_A_ht+0x1971e, %rdi
dec %r12
mov $81, %rcx
rep movsb
nop
sub %r9, %r9
lea addresses_UC_ht+0x1495e, %rsi
lea addresses_WT_ht+0x435e, %rdi
nop
nop
nop
add $38524, %r15
mov $13, %rcx
rep movsb
nop
nop
nop
nop
and $61733, %r9
lea addresses_UC_ht+0x152be, %rsi
lea addresses_A_ht+0xce76, %rdi
sub %r8, %r8
mov $61, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $38313, %r9
lea addresses_WC_ht+0x1385e, %r12
nop
nop
add %r8, %r8
vmovups (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
nop
nop
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0xdafe, %r15
nop
cmp $35647, %rsi
mov (%r15), %rcx
nop
nop
nop
cmp $15942, %rsi
lea addresses_UC_ht+0x1abde, %r12
nop
nop
nop
sub %r9, %r9
movl $0x61626364, (%r12)
nop
inc %r15
lea addresses_WT_ht+0xf85e, %rsi
lea addresses_normal_ht+0x15f5e, %rdi
nop
nop
nop
inc %r15
mov $117, %rcx
rep movsb
sub $30348, %r15
lea addresses_WT_ht+0x9257, %r15
nop
nop
nop
inc %rdi
movb $0x61, (%r15)
nop
nop
nop
nop
sub $37632, %r9
lea addresses_UC_ht+0x10194, %rsi
nop
xor $56569, %rdi
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
cmp $6106, %r8
lea addresses_normal_ht+0x72ce, %rsi
lea addresses_D_ht+0x1df5e, %rdi
nop
xor $45922, %rbx
mov $10, %rcx
rep movsb
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x12b5e, %rsi
lea addresses_WT_ht+0x1389e, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $57, %rcx
rep movsq
nop
nop
and $55894, %r9
lea addresses_A_ht+0x1695c, %r9
nop
sub %r12, %r12
movups (%r9), %xmm0
vpextrq $0, %xmm0, %r8
nop
xor $48419, %r9
lea addresses_D_ht+0x1ea9e, %rsi
lea addresses_A_ht+0xbb5e, %rdi
clflush (%rsi)
nop
add %r15, %r15
mov $86, %rcx
rep movsw
nop
cmp %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_D+0x17c26, %rax
nop
nop
and $53732, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
add %r9, %r9

// Store
lea addresses_A+0x415e, %rbp
nop
sub $55907, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
nop
nop
and $11946, %rcx

// Store
lea addresses_UC+0xdb5e, %r12
nop
nop
nop
nop
nop
dec %r11
movb $0x51, (%r12)
xor %rdi, %rdi

// Store
mov $0x5978350000000a8e, %r12
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movntdq %xmm1, (%r12)
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WC+0x357e, %rax
clflush (%rax)
nop
cmp %r9, %r9
movw $0x5152, (%rax)
nop
nop
nop
cmp $51933, %rcx

// Faulty Load
lea addresses_US+0x1c35e, %rdi
nop
nop
nop
and $44284, %rcx
mov (%rdi), %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'00': 127}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
