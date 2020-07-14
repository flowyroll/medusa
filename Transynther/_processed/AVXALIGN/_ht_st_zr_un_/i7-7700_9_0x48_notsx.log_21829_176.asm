.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1cc13, %rsi
lea addresses_WT_ht+0x1ba13, %rdi
clflush (%rdi)
nop
nop
cmp $26442, %rbx
mov $3, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0xa413, %rsi
lea addresses_WT_ht+0x2513, %rdi
xor %rdx, %rdx
mov $12, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0xeb83, %rsi
lea addresses_A_ht+0x11f7f, %rdi
nop
nop
sub $56397, %r13
mov $87, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x1a46d, %rbx
nop
nop
nop
nop
and %rcx, %rcx
mov (%rbx), %edx
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x15913, %r13
nop
nop
nop
and %r8, %r8
vmovups (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
xor $55322, %rcx
lea addresses_UC_ht+0x12513, %rsi
lea addresses_WT_ht+0x1e753, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $51, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x2c61, %rcx
dec %rbx
mov (%rcx), %si
nop
nop
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x2113, %rsi
clflush (%rsi)
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
sub $35859, %rdx
lea addresses_A_ht+0xe2d3, %rdx
nop
nop
xor %rsi, %rsi
movw $0x6162, (%rdx)
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x11013, %r13
nop
nop
add $48083, %rsi
movups (%r13), %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x9ef3, %rbx
nop
nop
nop
nop
xor $8998, %rdi
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
nop
add $14995, %rcx
lea addresses_WC_ht+0x1d7, %rsi
cmp $11501, %r13
mov (%rsi), %rdi
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x16dd9, %r13
clflush (%r13)
nop
nop
nop
nop
add %rdx, %rdx
mov (%r13), %bx
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x1da13, %rsi
lea addresses_A_ht+0x1c913, %rdi
and $15527, %rax
mov $10, %rcx
rep movsb
nop
nop
nop
add $28555, %rdx
lea addresses_WT_ht+0x4c13, %rsi
lea addresses_WC_ht+0x1bd13, %rdi
nop
nop
nop
nop
cmp $14168, %rbx
mov $77, %rcx
rep movsb
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rdi
push %rdx

// Load
lea addresses_RW+0x15713, %r13
and $5750, %rdi
vmovups (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
nop
nop
nop
xor $35683, %r13

// Load
lea addresses_WC+0x1bd13, %rdi
clflush (%rdi)
nop
nop
xor %r15, %r15
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
add %rdi, %rdi

// Store
lea addresses_normal+0x16113, %rbx
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_A+0x7c63, %r15
sub $5249, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r15)
nop
nop
xor %rdi, %rdi

// Store
lea addresses_D+0x17d13, %rdx
nop
nop
nop
cmp %rbp, %rbp
movb $0x51, (%rdx)
nop
nop
nop
nop
sub %rbp, %rbp

// Load
lea addresses_normal+0xf0ad, %rdi
sub %r10, %r10
mov (%rdi), %rbx
nop
nop
nop
nop
nop
add $54133, %rbp

// Store
lea addresses_WT+0x3b13, %rdi
nop
nop
nop
add $33439, %r15
movb $0x51, (%rdi)
sub $21862, %r15

// Load
mov $0xa3, %rbp
nop
nop
nop
dec %rbx
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_A+0x1bbf7, %r15
add $15099, %rdi
movw $0x5152, (%r15)
nop
nop
nop
nop
inc %rbx

// Load
lea addresses_WC+0x1313, %rdi
nop
nop
nop
nop
add %rbx, %rbx
movb (%rdi), %r10b
nop
cmp %r15, %r15

// Store
lea addresses_PSE+0x1ff93, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
movb $0x51, (%rdi)
nop
cmp %rdi, %rdi

// Store
mov $0x33376d0000000b93, %r10
nop
and %r15, %r15
movb $0x51, (%r10)
nop
nop
add $37153, %rdi

// Faulty Load
lea addresses_WC+0x1bd13, %r10
nop
cmp %r15, %r15
vmovaps (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'48': 2502, '44': 1245, '8b': 1, '46': 3727, '00': 14339, '03': 1, 'b3': 1, 'f8': 1, '72': 1, '53': 5, 'f7': 1, '3b': 5}
00 00 46 00 46 48 00 00 44 00 46 00 00 00 00 00 00 48 00 00 48 00 44 00 00 00 00 48 46 00 00 00 00 48 00 48 00 46 00 46 48 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 46 44 00 00 48 46 00 00 00 48 00 00 48 46 46 00 48 46 00 00 00 46 46 00 00 46 48 46 00 46 00 44 00 00 00 00 00 46 00 46 48 00 44 00 46 00 48 00 00 46 46 00 00 00 00 00 00 46 00 00 00 00 00 00 48 00 48 48 00 00 46 44 00 00 00 00 46 00 00 46 48 00 44 00 00 00 00 48 46 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 48 46 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 44 00 00 48 46 00 00 00 00 00 00 46 46 48 00 00 00 00 00 44 00 00 00 00 00 46 00 00 00 46 46 46 44 00 00 00 00 46 00 00 00 00 46 48 00 00 00 00 46 00 48 00 48 46 00 00 46 00 00 00 48 00 46 46 48 48 00 00 00 46 46 00 00 46 46 00 00 00 00 46 00 00 46 00 48 00 00 44 00 00 00 44 00 00 46 00 00 00 48 00 00 46 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 46 46 48 46 44 00 00 00 00 00 00 46 44 00 00 00 00 00 00 46 46 44 48 00 00 00 00 44 46 48 00 00 00 46 00 44 48 00 00 46 00 46 48 48 46 00 00 00 00 00 00 00 00 00 44 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 46 46 00 00 44 00 48 00 44 48 00 00 48 48 44 46 00 00 00 00 46 46 48 00 00 46 48 48 00 46 00 00 00 00 48 00 00 46 48 46 00 00 00 00 00 00 00 46 00 46 46 00 00 00 46 00 46 46 00 48 00 00 00 48 00 00 00 48 46 46 00 00 00 46 44 46 00 46 00 00 00 00 44 46 00 46 00 00 00 00 48 00 00 44 00 00 00 46 48 00 46 00 00 00 46 48 46 00 46 00 00 46 00 00 48 00 00 00 00 46 00 00 46 00 00 48 00 00 00 00 00 46 00 48 00 46 00 00 46 46 46 48 00 00 48 00 44 44 48 46 00 00 00 46 00 00 46 46 48 00 44 00 00 46 00 00 48 00 00 48 48 00 00 00 46 00 00 48 00 00 00 46 00 46 00 46 46 00 00 48 48 00 00 00 44 00 00 00 46 48 48 46 00 00 00 46 00 00 00 46 00 00 00 00 00 44 48 00 00 00 00 00 00 48 00 46 00 00 00 00 44 00 00 48 00 46 00 00 44 46 00 00 00 46 46 48 46 00 00 00 00 00 00 00 44 00 46 00 00 48 46 44 48 46 46 00 48 00 00 00 00 46 46 00 00 46 00 00 46 46 00 00 00 00 48 48 44 00 00 46 46 48 00 46 00 48 46 00 00 00 48 00 44 00 00 00 00 46 48 00 44 00 00 46 00 48 00 00 48 00 46 00 00 00 00 00 48 46 46 00 00 00 00 00 00 00 46 48 00 00 53 00 00 46 46 48 46 00 00 00 44 00 00 00 00 48 46 00 00 00 00 44 48 00 00 00 44 46 00 00 46 46 46 48 00 00 00 44 46 48 48 00 00 00 48 46 44 00 48 46 00 00 00 46 00 00 48 46 48 00 00 00 44 00 48 44 48 00 48 46 46 00 00 48 00 00 48 00 00 48 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 44 00 00 00 00 48 00 00 48 44 48 00 46 00 46 46 00 00 00 00 00 00 00 00 00 46 00 48 00 00 48 00 44 00 46 46 46 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 48 46 46 46 00 46 00 00 46 00 00 48 46 46 48 46 00 44 00 00 46 00 46 00 00 48 00 00 48 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 48 46 48 00 00 46 48 00 46 46 00 00 00 48 00 00 48 00 00 46 00 00 00 46 46 00 00 00 48 00 44 00 00 00 00 48 00 00 00 48 46 00 00 00 46 00 00 00 00 00 00 00 00 00 48 00 00 00 46 46 00 00 00 46 00 00 46 00 00 48 46 44 48 00 00 48 46 46 48 48 00 00 48 48 00 00 00
*/
