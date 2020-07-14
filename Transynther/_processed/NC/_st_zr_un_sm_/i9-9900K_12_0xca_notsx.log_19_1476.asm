.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x53ec, %rsi
lea addresses_WC_ht+0x8054, %rdi
clflush (%rdi)
and $28585, %rbx
mov $8, %rcx
rep movsw
xor $7291, %r8
lea addresses_A_ht+0x1c0dc, %r15
clflush (%r15)
and $57161, %r10
movb (%r15), %cl
nop
nop
add %r8, %r8
lea addresses_WT_ht+0xf9b1, %rsi
lea addresses_D_ht+0xfaac, %rdi
cmp $7896, %r14
mov $116, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $48160, %r14
lea addresses_WT_ht+0x1ea59, %r14
nop
nop
nop
and %rsi, %rsi
movups (%r14), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0xefb6, %rsi
lea addresses_WT_ht+0x1e7ec, %rdi
clflush (%rdi)
nop
nop
sub $27600, %r8
mov $12, %rcx
rep movsq
nop
dec %r10
lea addresses_D_ht+0x7fec, %rbx
nop
nop
cmp $4294, %rcx
movw $0x6162, (%rbx)
nop
and $23168, %rcx
lea addresses_normal_ht+0x1876c, %rdi
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%rdi)
nop
add %r8, %r8
lea addresses_UC_ht+0xe3ec, %r10
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
and $0xffffffffffffffc0, %r10
movntdq %xmm0, (%r10)
and $1137, %rdi
lea addresses_normal_ht+0x148ec, %rcx
nop
and %r8, %r8
mov (%rcx), %esi
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0xc1ec, %rsi
lea addresses_WT_ht+0xfdec, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $54, %rcx
rep movsq
sub %r8, %r8
lea addresses_UC_ht+0x1b3ec, %r8
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%r8), %r14b
nop
and $13578, %rdi
lea addresses_D_ht+0x1622c, %rsi
lea addresses_normal_ht+0xe96c, %rdi
nop
nop
nop
nop
nop
cmp $2896, %rbx
mov $32, %rcx
rep movsb
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rdi
push %rsi

// Load
lea addresses_normal+0x16b70, %r15
nop
nop
inc %r11
vmovups (%r15), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_WC+0x17dec, %rsi
nop
nop
add %r10, %r10
movl $0x51525354, (%rsi)
and %r10, %r10

// Store
lea addresses_normal+0xd98c, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, (%rdi)
nop
nop
sub $30099, %rdi

// Store
mov $0x42d01500000003f3, %r15
nop
dec %rsi
movw $0x5152, (%r15)
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WT+0xa19c, %r15
clflush (%r15)
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
add %r11, %r11

// Load
lea addresses_UC+0x1d6ec, %r8
nop
nop
nop
nop
add $38051, %rax
movb (%r8), %r15b
nop
nop
nop
and $41141, %rax

// Store
mov $0x15f5dc00000003ec, %r10
nop
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
nop
nop
xor $14024, %r10

// Store
lea addresses_US+0x86a1, %r11
nop
sub %rax, %rax
movb $0x51, (%r11)
nop
add %rsi, %rsi

// Store
lea addresses_normal+0x1b7ac, %rsi
nop
and $21834, %rdi
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
mov $0x7ec, %r15
nop
nop
nop
nop
inc %rax
movl $0x51525354, (%r15)
nop
nop
xor %r15, %r15

// Faulty Load
mov $0x15f5dc00000003ec, %r15
inc %r10
mov (%r15), %edi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'00': 1, '58': 15, '10': 3}
58 10 58 58 58 58 00 58 10 58 58 58 10 58 58 58 58 58 58
*/
