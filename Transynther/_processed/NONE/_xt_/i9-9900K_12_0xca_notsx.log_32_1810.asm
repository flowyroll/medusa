.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xea71, %r8
nop
nop
nop
nop
nop
xor $2149, %rbp
movl $0x61626364, (%r8)
cmp %r13, %r13
lea addresses_WC_ht+0x13822, %rcx
nop
xor $55810, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0xb02, %rdi
nop
nop
nop
and $10404, %rcx
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
and $64197, %rdi
lea addresses_WC_ht+0x10bf2, %rcx
nop
sub $26156, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rcx)
add $43527, %r8
lea addresses_WT_ht+0xc22, %rbp
sub $3789, %rcx
movb $0x61, (%rbp)
nop
nop
nop
nop
cmp $36042, %rbx
lea addresses_normal_ht+0x555a, %rsi
lea addresses_UC_ht+0x8422, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $6, %rcx
rep movsq
nop
nop
nop
nop
xor $42316, %rcx
lea addresses_A_ht+0xfda2, %rsi
nop
nop
nop
sub %rbx, %rbx
movb (%rsi), %r11b
nop
nop
nop
nop
cmp $52422, %rbp
lea addresses_D_ht+0x6f22, %rcx
nop
nop
nop
and %rbx, %rbx
mov (%rcx), %edi
nop
add %r8, %r8
lea addresses_normal_ht+0x1beda, %rsi
lea addresses_normal_ht+0xc5ba, %rdi
nop
and $7775, %rbp
mov $50, %rcx
rep movsl
nop
and $40965, %rbx
lea addresses_WT_ht+0x1c422, %rsi
lea addresses_WC_ht+0x32a9, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $38, %rcx
rep movsb
nop
nop
nop
nop
nop
and $52536, %r13
lea addresses_UC_ht+0x30f2, %r11
and $27676, %rsi
mov $0x6162636465666768, %r8
movq %r8, (%r11)
nop
nop
nop
nop
nop
cmp $24851, %rdi
lea addresses_A_ht+0x1c422, %r8
nop
nop
cmp $53404, %r11
movb (%r8), %cl
add %rsi, %rsi
lea addresses_WT_ht+0xb5e9, %rbx
clflush (%rbx)
nop
nop
nop
add %r11, %r11
movw $0x6162, (%rbx)
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rbx
push %rdi
push %rsi

// Store
lea addresses_UC+0x1b5a6, %rbx
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
nop
nop
nop
nop
dec %r8

// Store
lea addresses_PSE+0x12822, %r11
nop
nop
sub $8133, %r14
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
sub $28606, %r9

// Store
lea addresses_PSE+0xe022, %rbx
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
nop
xor $54361, %rdi

// Load
lea addresses_normal+0x15422, %rdi
nop
nop
nop
nop
cmp %r11, %r11
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r8
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_WT+0x4212, %r9
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_RW+0x11822, %r8
cmp %r11, %r11
mov (%r8), %di
nop
nop
nop
sub $48141, %rsi

// Store
lea addresses_RW+0x1a22, %r9
nop
nop
nop
cmp $17621, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movaps %xmm0, (%r9)
nop
nop
nop
inc %r8

// Store
lea addresses_normal+0xdf82, %r11
sub %rbx, %rbx
movw $0x5152, (%r11)
nop
and $11777, %r8

// Store
lea addresses_WC+0x12262, %r8
xor %rbx, %rbx
movb $0x51, (%r8)
nop
nop
nop
nop
cmp %r9, %r9

// Load
lea addresses_RW+0x11822, %r8
clflush (%r8)
nop
cmp $41371, %r14
mov (%r8), %r11
sub %rdi, %rdi

// Store
mov $0x722, %r11
nop
sub $2331, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovntdq %ymm0, (%r11)
sub %rsi, %rsi

// Load
lea addresses_A+0x9622, %rbx
cmp %r14, %r14
mov (%rbx), %r9d
nop
cmp %r8, %r8

// Faulty Load
lea addresses_RW+0x11822, %rdi
nop
nop
nop
nop
and %r9, %r9
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %rbx
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'32': 32}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
