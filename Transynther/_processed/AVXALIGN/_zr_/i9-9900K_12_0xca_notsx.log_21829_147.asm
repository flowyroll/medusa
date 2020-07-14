.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xb229, %r13
nop
nop
nop
nop
sub %r10, %r10
movb (%r13), %r14b
nop
nop
and %r14, %r14
lea addresses_WC_ht+0xc49, %rsi
lea addresses_A_ht+0x9c7f, %rdi
nop
add %r12, %r12
mov $13, %rcx
rep movsq
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x49, %r13
nop
nop
dec %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
inc %r14
lea addresses_WC_ht+0xe71, %rsi
lea addresses_UC_ht+0x7e49, %rdi
nop
nop
nop
dec %r11
mov $31, %rcx
rep movsw
nop
nop
nop
nop
and $45982, %rcx
lea addresses_normal_ht+0x1ba49, %r13
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm1
and $0xffffffffffffffc0, %r13
vmovaps %ymm1, (%r13)
nop
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x1a2c9, %rsi
lea addresses_WT_ht+0x1af01, %rdi
inc %r11
mov $127, %rcx
rep movsw
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1b4c9, %rsi
nop
cmp $32633, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
sub $10475, %r13
lea addresses_D_ht+0x6155, %r12
nop
nop
nop
nop
cmp %r13, %r13
mov (%r12), %r10d
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x149, %r13
nop
xor %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
and $0xffffffffffffffc0, %r13
movntdq %xmm7, (%r13)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x735a, %r12
clflush (%r12)
nop
nop
nop
nop
nop
add $43535, %r14
mov (%r12), %r13
nop
xor $21295, %rdi
lea addresses_UC_ht+0x17ce9, %r14
nop
nop
nop
nop
sub %r12, %r12
movb (%r14), %r11b
cmp %r11, %r11
lea addresses_A_ht+0x9631, %rdi
nop
sub $39460, %rsi
mov (%rdi), %r13w
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0xa010, %rsi
lea addresses_WC+0x16bfb, %rdi
clflush (%rdi)
nop
nop
and $20401, %r11
mov $118, %rcx
rep movsb
inc %r12

// Load
lea addresses_normal+0x6249, %r11
nop
nop
nop
nop
nop
and $5062, %r13
movb (%r11), %r12b
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_UC+0x1c49, %rsi
nop
nop
nop
xor %r13, %r13
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
dec %r12

// Store
lea addresses_normal+0x10049, %rbx
nop
cmp %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
and %rcx, %rcx

// Store
lea addresses_normal+0x124e6, %r11
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r11)
nop
cmp $63302, %rsi

// Store
lea addresses_WT+0x11fd9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r13, %r13
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_WT+0xa049, %rdi
inc %rbx
movb $0x51, (%rdi)
cmp $41000, %r11

// REPMOV
lea addresses_WT+0x18aa9, %rsi
lea addresses_PSE+0x1b259, %rdi
nop
nop
xor %r9, %r9
mov $1, %rcx
rep movsw
nop
nop
nop
nop
inc %rdi

// Store
mov $0xa89, %rsi
nop
nop
nop
add $15964, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rsi)
nop
and %r11, %r11

// Load
lea addresses_PSE+0x7089, %rcx
nop
sub $2805, %rsi
mov (%rcx), %r12w
nop
nop
nop
add $55409, %rbx

// Faulty Load
lea addresses_WT+0x1f449, %r11
nop
nop
add %r13, %r13
movntdqa (%r11), %xmm6
vpextrq $0, %xmm6, %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
