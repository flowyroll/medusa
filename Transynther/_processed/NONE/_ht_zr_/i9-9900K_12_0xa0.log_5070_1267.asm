.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x66ed, %rsi
lea addresses_UC_ht+0x17d0d, %rdi
clflush (%rsi)
nop
xor $51850, %r9
mov $95, %rcx
rep movsq
nop
nop
nop
lfence
lea addresses_WT_ht+0xcb85, %r10
nop
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
add %rax, %rax
lea addresses_WC_ht+0x696d, %rsi
lea addresses_WC_ht+0x32ed, %rdi
nop
nop
nop
nop
inc %rbx
mov $77, %rcx
rep movsq
nop
nop
nop
sub $42913, %rbx
lea addresses_normal_ht+0x1a751, %rbx
nop
nop
sub $44332, %r10
mov (%rbx), %si
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x1a6ed, %rbx
clflush (%rbx)
nop
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x12ed, %r9
nop
nop
nop
nop
inc %rsi
mov (%r9), %cx
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x22ed, %rsi
lea addresses_D_ht+0x435d, %rdi
dec %rbp
mov $46, %rcx
rep movsq
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x324d, %rax
clflush (%rax)
dec %rdi
mov (%rax), %cx
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0x680d, %rbp
nop
nop
xor $7085, %r10
movl $0x61626364, (%rbp)
add %rbp, %rbp
lea addresses_A_ht+0xf5ed, %rcx
nop
nop
nop
inc %r10
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
nop
add %rdi, %rdi
lea addresses_D_ht+0x1327d, %r9
nop
nop
dec %rdi
mov $0x6162636465666768, %rax
movq %rax, (%r9)
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbp
push %rbx
push %rdi
push %rdx

// Load
lea addresses_D+0x1c04d, %r15
nop
nop
nop
nop
nop
add $22259, %rbp
mov (%r15), %dx
sub %rbp, %rbp

// Store
lea addresses_A+0xaaed, %r15
nop
nop
sub %r10, %r10
movw $0x5152, (%r15)
nop
nop
nop
nop
add $61628, %rdx

// Load
lea addresses_A+0x1d2ed, %r10
clflush (%r10)
nop
dec %r15
mov (%r10), %r11d
nop
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_normal+0x1c86d, %rdx
nop
nop
cmp $16496, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rdx)
and $10552, %rbx

// Faulty Load
lea addresses_A+0x1d2ed, %r10
clflush (%r10)
nop
nop
xor %rdx, %rdx
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'45': 2828, '46': 162, '00': 990, '48': 1090}
00 45 45 45 45 45 45 48 45 45 00 00 45 45 45 45 45 00 00 45 48 00 45 45 45 45 45 45 45 48 45 45 45 48 45 45 45 00 45 45 45 45 00 45 46 48 45 45 45 45 48 45 45 45 00 45 45 45 45 45 48 48 00 00 45 45 45 48 45 45 45 48 48 48 45 45 45 45 45 00 45 45 46 45 45 45 45 00 45 45 00 45 45 48 45 45 48 45 48 45 00 00 45 48 00 45 45 00 45 48 48 45 00 00 45 45 45 45 45 45 45 45 45 48 00 45 45 48 00 45 45 45 45 00 45 00 45 46 45 45 45 00 45 45 46 48 45 00 00 48 00 00 45 45 45 00 45 45 45 00 48 45 48 00 45 45 45 45 45 48 48 48 45 00 46 46 48 00 45 48 48 00 45 45 45 48 45 48 00 45 45 48 00 48 45 48 48 45 45 45 48 48 45 45 46 45 45 46 00 48 48 45 48 48 45 00 00 00 45 45 48 00 48 45 00 48 45 45 45 45 45 45 00 46 00 46 48 45 45 00 00 45 48 00 45 00 00 00 45 00 45 45 00 00 48 00 00 00 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 48 48 00 00 45 45 00 45 00 00 48 45 00 00 45 00 48 45 00 00 45 46 45 45 45 45 00 46 48 45 45 48 45 48 45 00 45 45 45 45 00 45 48 48 45 45 00 45 00 48 00 45 45 45 45 00 00 00 00 45 48 45 45 45 45 45 45 48 45 45 48 45 45 00 48 45 45 48 00 45 00 48 45 00 45 45 45 48 00 46 45 45 48 00 48 48 45 00 45 46 48 48 48 45 00 48 45 45 45 00 45 00 45 45 00 45 48 45 45 45 00 45 48 45 45 45 45 45 00 45 45 00 45 48 00 45 00 45 45 00 45 00 00 45 46 45 45 45 48 00 48 45 45 45 00 46 45 48 48 45 48 48 48 48 45 46 48 45 48 45 45 45 45 00 48 45 48 48 48 00 00 00 46 45 45 48 48 45 45 45 00 00 48 45 45 00 00 00 45 00 45 45 45 48 00 46 48 45 48 00 45 48 45 00 45 45 48 45 45 48 48 48 48 45 45 45 48 45 48 45 46 45 00 45 48 48 48 48 00 45 48 45 45 48 00 45 48 00 00 45 45 45 48 45 48 45 45 45 45 45 45 00 45 45 45 00 46 45 48 45 48 46 45 00 48 45 48 45 00 00 00 45 48 45 00 45 45 48 45 48 45 45 48 48 45 45 48 48 45 45 48 45 00 48 48 46 48 48 45 45 00 45 45 45 45 00 45 00 48 45 45 45 48 48 45 48 48 45 45 00 45 00 00 46 45 00 45 45 45 00 48 45 45 45 45 00 45 45 00 48 45 45 00 45 48 45 45 00 48 48 45 48 45 45 45 45 00 45 48 45 00 45 48 45 45 00 45 45 48 45 45 45 45 00 48 46 48 48 45 45 45 45 48 45 00 48 00 45 45 00 45 45 00 00 00 00 00 45 00 45 48 45 00 45 48 45 45 00 48 00 45 45 48 45 45 00 45 00 45 00 45 48 45 45 45 48 46 48 48 45 48 45 48 00 45 45 45 48 00 45 45 00 00 00 45 48 00 45 45 45 48 45 46 45 00 00 45 46 48 00 45 00 45 48 45 48 45 45 45 00 45 00 48 45 45 48 48 48 45 00 48 45 45 00 45 45 00 48 00 46 48 45 45 45 45 00 48 00 00 00 45 45 45 48 45 46 45 48 00 45 45 45 45 48 48 00 45 45 45 00 45 45 45 48 45 45 48 45 45 00 45 00 45 46 45 45 45 46 48 00 48 46 48 45 45 45 45 45 45 00 00 00 45 46 00 00 45 45 45 45 48 45 00 45 45 48 45 48 45 45 00 45 45 48 48 48 46 45 45 45 48 45 48 48 45 45 45 48 45 48 45 45 48 45 45 48 45 48 45 45 00 45 45 45 45 45 45 45 45 48 00 45 45 00 45 45 00 45 45 00 00 45 45 48 45 00 45 48 48 45 48 45 48 45 45 45 45 00 45 45 45 00 46 00 00 00 45 45 45 45 45 00 00 48 45 45 45 48 45 45 45 48 45 45 45 00 45 48 45 00 00 00 45 48 45 45 00 45 00 00 00 45 48 00 45 45 48 48 45 00 45 00 45 45 48 45 46 45 45 45 48 48 00 45 45 45 45 00 45 45 45 45 00 45
*/
