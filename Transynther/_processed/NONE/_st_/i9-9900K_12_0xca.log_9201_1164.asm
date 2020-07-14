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
lea addresses_WC_ht+0x16dcf, %rsi
lea addresses_normal_ht+0x1e1cf, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $85, %rcx
rep movsw
sub %r12, %r12
lea addresses_WC_ht+0x1d8f7, %r11
and $17305, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r11)
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x139cf, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x61, (%rbp)
nop
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x163ef, %rsi
lea addresses_D_ht+0x6bcf, %rdi
nop
nop
nop
xor %r8, %r8
mov $39, %rcx
rep movsq
nop
add %rcx, %rcx
lea addresses_UC_ht+0x19cf, %r8
nop
nop
nop
nop
nop
cmp %rax, %rax
mov (%r8), %rbp
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x19607, %rsi
lea addresses_D_ht+0x838f, %rdi
nop
nop
nop
add $16169, %rbp
mov $10, %rcx
rep movsq
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x16da7, %rsi
lea addresses_D_ht+0x132cf, %rdi
nop
nop
nop
nop
nop
add $46591, %r12
mov $42, %rcx
rep movsb
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x83cf, %rbp
nop
nop
nop
sub $51488, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm2
and $0xffffffffffffffc0, %rbp
vmovaps %ymm2, (%rbp)
sub $34469, %r8
lea addresses_WC_ht+0x1fcf, %rsi
lea addresses_A_ht+0x1526f, %rdi
nop
xor $29184, %rbp
mov $1, %rcx
rep movsb
nop
nop
add %r11, %r11
lea addresses_WT_ht+0x1e1cf, %rsi
lea addresses_normal_ht+0x1376f, %rdi
dec %r8
mov $101, %rcx
rep movsq
nop
nop
xor $27104, %rax
lea addresses_WT_ht+0x69cf, %rdi
nop
nop
nop
nop
nop
add $25918, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rdi)
cmp %r11, %r11
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
push %r10
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rsi

// Load
lea addresses_normal+0x1b45c, %r11
nop
nop
nop
add %r12, %r12
movups (%r11), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
add $62264, %rsi

// Store
lea addresses_WT+0xc04f, %rsi
inc %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rsi)
add $23423, %r10

// Store
lea addresses_UC+0x64f, %r11
clflush (%r11)
nop
nop
nop
xor %rbp, %rbp
movw $0x5152, (%r11)
nop
nop
nop
add $55875, %rsi

// Store
lea addresses_UC+0x13b4d, %r11
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_D+0xd38f, %r12
cmp %r11, %r11
movw $0x5152, (%r12)
nop
nop
xor $60853, %rsi

// Store
lea addresses_RW+0x1e9cf, %rcx
sub $9312, %r10
movl $0x51525354, (%rcx)
cmp %rbp, %rbp

// Store
mov $0x5221d10000000ceb, %rbp
nop
nop
nop
nop
nop
sub %r11, %r11
movw $0x5152, (%rbp)
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_WC+0x59cf, %rbp
nop
nop
cmp $44984, %r12
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 11}}
{'54': 9201}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
