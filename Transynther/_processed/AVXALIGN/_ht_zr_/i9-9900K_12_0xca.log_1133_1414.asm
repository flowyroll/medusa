.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a72f, %r10
nop
nop
nop
dec %rsi
movb $0x61, (%r10)
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0xe691, %rsi
lea addresses_WC_ht+0xab2f, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $3, %rcx
rep movsq
nop
nop
lfence
lea addresses_normal_ht+0x1256f, %rdi
nop
xor %r12, %r12
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %rcx
nop
xor %r12, %r12
lea addresses_UC_ht+0x23af, %rdi
nop
and %r12, %r12
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
nop
nop
inc %r14
lea addresses_A_ht+0x14b2f, %rsi
lea addresses_UC_ht+0x1232f, %rdi
nop
nop
nop
and %r8, %r8
mov $72, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0xddb3, %rsi
nop
nop
nop
nop
and %r11, %r11
mov (%rsi), %di
nop
nop
inc %rcx
lea addresses_WT_ht+0x1932f, %rsi
lea addresses_normal_ht+0x12acf, %rdi
nop
nop
nop
cmp %r12, %r12
mov $25, %rcx
rep movsw
sub %rdi, %rdi
lea addresses_D_ht+0xe42f, %rcx
nop
nop
nop
nop
nop
xor %r11, %r11
mov (%rcx), %r12d
nop
nop
nop
dec %r12
lea addresses_UC_ht+0x1231f, %rsi
lea addresses_D_ht+0xe32f, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $102, %rcx
rep movsw
nop
nop
nop
nop
add $984, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rdx
push %rsi

// Store
lea addresses_PSE+0x932f, %rdx
nop
nop
and $35130, %r10
movl $0x51525354, (%rdx)
nop
cmp $13291, %rsi

// Store
lea addresses_UC+0x13bf7, %r11
nop
nop
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r11)
nop
and %rsi, %rsi

// Load
lea addresses_PSE+0x1802f, %r11
clflush (%r11)
nop
xor %r9, %r9
vmovups (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
cmp $52742, %rsi

// Store
lea addresses_UC+0xa397, %r11
clflush (%r11)
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r11)
nop
nop
and %rdx, %rdx

// Store
lea addresses_A+0x9a6f, %r8
nop
nop
nop
nop
nop
dec %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movntdq %xmm6, (%r8)
nop
nop
cmp $15838, %r10

// Faulty Load
lea addresses_WC+0x17b2f, %r8
nop
nop
nop
nop
inc %r11
movaps (%r8), %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}}
{'44': 7, '45': 847, '00': 274, '47': 5}
00 45 45 45 45 45 00 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 00 00 45 45 00 00 45 45 45 45 45 45 45 47 45 45 45 45 00 45 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 00 45 00 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 00 00 45 45 00 45 45 45 00 45 45 45 45 00 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 00 45 00 00 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 00 45 00 45 45 45 45 00 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 47 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 00 00 45 00 45 00 00 00 00 45 45 00 45 45 00 00 00 45 00 45 45 45 45 45 00 00 45 45 45 45 00 00 45 45 45 45 45 47 45 00 45 45 45 45 45 45 00 45 00 00 45 00 00 45 00 45 45 45 45 00 00 45 45 00 45 00 45 45 45 45 44 45 45 45 00 45 45 00 45 45 45 45 45 45 00 45 45 45 45 00 45 47 00 00 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 44 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 45 00 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 00 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 00 00 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 00 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 00 45 44 45 45 00 45 45 45 45 45 45 45 00 45 45 00 45 45 00 45 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 00 00 45 45 45 45 45 45 45 45 45 00 45 00 00 45 45 44 00 45 45 45 45 45 45 45 45 45 47 45 45 00 45 45 45 45 00 00 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 00 00 45 45 45 45 45 45 45 00 00 45 45 45 45 00 45 45 45 45 00 45 45 00 45 45 00 45 00 45 00 45 45 45 45 00 45 45 00 45 00 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 00 00 00 00 45 45 45 00 45 45 00 45 00 00 45 00 45 45 45 00 45 45 45 00 00 00 00 45 45 44 45 45 45 00 45 00 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 45 00 00 45 45 45 45 45 00 45 45 45 00 45 00 45 00 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 00 00 45 00 45 45 00 45 45 45 45 45 45 45 00 45 00 45 00 45 00 00 45 45 45 45 45 45 45 00 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 00 45 00 45 45 45 45 45 00 45 45 45 45 00 00 45 00 45 45 00 45 45 45 45 45 45 45 00 00 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 00 45 45 45 00 00 00 45 45 45 45 00 00 45 45 00 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 00 45 45 45 44 45 45 00 45 00 00 45 45 45 45 45 45 00 45 45 00 45 45 45 00 00 45 45 00 00 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45
*/
