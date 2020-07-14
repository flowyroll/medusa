.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x13874, %r11
nop
nop
nop
nop
nop
inc %rbx
and $0xffffffffffffffc0, %r11
vmovntdqa (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r8
cmp $1330, %r15
lea addresses_WC_ht+0x1eb90, %rsi
lea addresses_WC_ht+0x9574, %rdi
nop
inc %r9
mov $65, %rcx
rep movsl
xor $60347, %r15
lea addresses_D_ht+0xdf74, %rsi
lea addresses_A_ht+0x1a374, %rdi
clflush (%rsi)
nop
nop
sub $48526, %r15
mov $109, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $45599, %rcx
lea addresses_UC_ht+0x65a4, %rsi
lea addresses_WT_ht+0x1f74, %rdi
nop
sub $18602, %r15
mov $36, %rcx
rep movsw
nop
nop
add $33526, %rdi
lea addresses_D_ht+0x829b, %rsi
lea addresses_WT_ht+0xb915, %rdi
nop
nop
inc %r8
mov $101, %rcx
rep movsw
nop
nop
nop
inc %r15
lea addresses_A_ht+0x6be4, %r9
clflush (%r9)
nop
nop
nop
nop
and $36936, %r11
movl $0x61626364, (%r9)
cmp $3788, %r9
lea addresses_normal_ht+0x1eca4, %r15
nop
nop
add $40840, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%r15)
nop
nop
add $14361, %rsi
lea addresses_WC_ht+0xf474, %rsi
nop
nop
nop
nop
nop
sub $43134, %r11
movl $0x61626364, (%rsi)
nop
nop
nop
add $55902, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x1774, %rcx
nop
inc %r11
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
inc %r11

// Load
lea addresses_WC+0x1e374, %rdi
clflush (%rdi)
nop
and $55040, %r13
mov (%rdi), %rcx
add %r11, %r11

// Load
lea addresses_PSE+0x89f4, %r10
nop
nop
nop
nop
and %r11, %r11
movups (%r10), %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
nop
nop
cmp %r13, %r13

// REPMOV
mov $0x774, %rsi
lea addresses_WC+0x8774, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $5, %rcx
rep movsl
nop
nop
cmp $4031, %r13

// Store
lea addresses_UC+0x16d84, %r13
nop
nop
nop
nop
and $31146, %rax
movb $0x51, (%r13)
nop
nop
cmp $59286, %rcx

// Faulty Load
lea addresses_normal+0xef74, %r11
nop
nop
nop
xor $35551, %rsi
vmovaps (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_P'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'48': 1795, '33': 1, '46': 1099, '45': 27, '00': 18907}
00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 46 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 00 00 46 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 48 00 00 00 46 00 46 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 46 00 48 00 00 00 00 00 00 00 00 46 00 46 00 00 48 00 00 00 00 00 00 48 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 48 00 00 00 48 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 46 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 46 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 46 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 46 46 45 48 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 46 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 48 00 00 00 48 00 00 46 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 46 00 00 00 00 00 46 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 46 00 00 00 00 00 46 00 00 00 00 00 48 00 00 00 00 00 46 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 46 00 48 00 00 00 48 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 48 00 00
*/
