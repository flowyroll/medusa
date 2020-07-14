.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a722, %r11
nop
inc %rdi
movb $0x61, (%r11)
nop
nop
nop
nop
dec %rbp
lea addresses_normal_ht+0xa9cc, %r10
xor $25915, %r11
mov (%r10), %r12w
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0x15ecc, %rsi
lea addresses_UC_ht+0x614c, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $64, %rcx
rep movsl
nop
nop
nop
nop
and $53431, %rsi
lea addresses_A_ht+0xee8c, %r11
clflush (%r11)
nop
cmp $52571, %r8
movl $0x61626364, (%r11)
nop
nop
nop
nop
cmp $30525, %r11
lea addresses_UC_ht+0x734c, %r12
cmp $22659, %rcx
movb (%r12), %r11b
nop
and %r11, %r11
lea addresses_D_ht+0x714c, %r10
cmp %rcx, %rcx
mov (%r10), %si
sub %r11, %r11
lea addresses_WC_ht+0x61cc, %r10
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r10), %r8w
nop
nop
nop
nop
nop
sub $5104, %r11
lea addresses_normal_ht+0x1251c, %r10
clflush (%r10)
nop
nop
dec %rbp
movw $0x6162, (%r10)
nop
nop
and $17161, %r12
lea addresses_WT_ht+0x4804, %rbp
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%rbp)
nop
cmp %r11, %r11
lea addresses_WC_ht+0xae6a, %r12
nop
nop
nop
and $30267, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r12)
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x74cc, %rbp
nop
nop
nop
and $7986, %r11
mov (%rbp), %cx
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x1244c, %rsi
lea addresses_D_ht+0x7acc, %rdi
nop
cmp $45672, %r12
mov $15, %rcx
rep movsw
dec %r8
lea addresses_WT_ht+0x1394c, %rsi
clflush (%rsi)
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
dec %rsi
lea addresses_UC_ht+0x17702, %rsi
lea addresses_WT_ht+0xe0cc, %rdi
cmp $15766, %rbp
mov $30, %rcx
rep movsl
nop
add $41626, %r8
lea addresses_normal_ht+0xaea6, %r12
nop
nop
nop
dec %rsi
movups (%r12), %xmm6
vpextrq $0, %xmm6, %r10
nop
cmp %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x1524c, %rsi
lea addresses_PSE+0xf9cc, %rdi
nop
add %r10, %r10
mov $124, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $57296, %rdi

// Faulty Load
lea addresses_US+0x1a14c, %r13
nop
and %r11, %r11
mov (%r13), %di
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_PSE'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'00': 23}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
