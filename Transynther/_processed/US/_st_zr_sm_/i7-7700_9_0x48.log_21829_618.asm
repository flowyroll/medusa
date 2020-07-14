.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x8f54, %rdi
nop
dec %rdx
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
sub $57319, %r15
lea addresses_D_ht+0xdbdc, %rax
nop
dec %rbp
mov (%rax), %r11d
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1e0d1, %rsi
lea addresses_normal_ht+0x14af0, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $38101, %r11
mov $8, %rcx
rep movsl
xor $6673, %rcx
lea addresses_UC_ht+0x1445c, %rsi
lea addresses_A_ht+0xa23c, %rdi
nop
cmp %rbp, %rbp
mov $121, %rcx
rep movsw
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x2b7c, %rdi
nop
nop
nop
dec %rsi
movb (%rdi), %r15b
nop
nop
xor $9514, %r15
lea addresses_WT_ht+0x1b944, %rsi
lea addresses_WT_ht+0x1dfdc, %rdi
nop
nop
nop
nop
nop
and $4806, %rax
mov $11, %rcx
rep movsq
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x1029c, %rsi
clflush (%rsi)
nop
nop
inc %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rsi)
cmp %rdi, %rdi
lea addresses_normal_ht+0x211c, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp %rdi, %rdi
movb (%rsi), %r11b
xor $47154, %rdi
lea addresses_normal_ht+0xff4c, %rsi
lea addresses_normal_ht+0x3f84, %rdi
clflush (%rdi)
nop
xor %rbp, %rbp
mov $121, %rcx
rep movsb
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x788c, %rsi
lea addresses_normal_ht+0xafdc, %rdi
nop
nop
nop
nop
nop
xor $31153, %r15
mov $85, %rcx
rep movsl
and %rbp, %rbp
lea addresses_WT_ht+0x1871c, %rsi
lea addresses_D_ht+0x67dc, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $111, %rcx
rep movsb
nop
nop
nop
nop
and $54445, %rbp
lea addresses_WT_ht+0x1868c, %rbp
nop
nop
nop
nop
xor %r11, %r11
movups (%rbp), %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
nop
sub $47585, %rsi
lea addresses_normal_ht+0x18ddc, %rsi
lea addresses_UC_ht+0xb2c4, %rdi
nop
nop
nop
nop
cmp $51259, %rax
mov $65, %rcx
rep movsl
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x1c3dc, %rsi
lea addresses_UC_ht+0x1a99c, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $96, %rcx
rep movsl
nop
nop
nop
nop
add $57255, %rdi
lea addresses_A_ht+0x1612a, %rsi
lea addresses_normal_ht+0x18fd4, %rdi
nop
nop
and $4099, %rbp
mov $85, %rcx
rep movsq
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Store
mov $0x7dc, %rdx
nop
nop
nop
nop
inc %rax
movb $0x51, (%rdx)
nop
nop
nop
nop
xor %rbp, %rbp

// Load
lea addresses_US+0x14bdc, %rbp
clflush (%rbp)
nop
cmp $54259, %r10
mov (%rbp), %eax
nop
add %rax, %rax

// Load
lea addresses_D+0x1b5d0, %rbp
sub $24659, %rdx
movups (%rbp), %xmm2
vpextrq $1, %xmm2, %rcx
nop
xor $57781, %r8

// Store
lea addresses_US+0x14bdc, %r10
nop
nop
nop
nop
nop
xor %rsi, %rsi
movl $0x51525354, (%r10)
nop
nop
add $59360, %rbp

// Faulty Load
lea addresses_US+0x14bdc, %r8
nop
nop
nop
nop
nop
cmp $49769, %r10
mov (%r8), %ax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'54': 21818, '00': 11}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
