.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x36d0, %rcx
nop
nop
sub $15102, %r10
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
add %rbx, %rbx
lea addresses_WC_ht+0x1aed0, %r12
nop
nop
nop
nop
nop
inc %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm1
and $0xffffffffffffffc0, %r12
vmovaps %ymm1, (%r12)
xor %r10, %r10
lea addresses_WT_ht+0x47e0, %r12
nop
dec %r9
mov (%r12), %r13
inc %r12
lea addresses_WC_ht+0x141b8, %r14
nop
nop
nop
cmp $63584, %r10
movl $0x61626364, (%r14)
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x33e0, %r12
add %r10, %r10
mov (%r12), %r9d
nop
add %r14, %r14
lea addresses_WT_ht+0x13ec1, %r14
nop
xor %rcx, %rcx
mov (%r14), %r10w
nop
nop
cmp $32291, %rbx
lea addresses_UC_ht+0x1bb9b, %rsi
lea addresses_WT_ht+0x19f16, %rdi
nop
nop
nop
nop
sub $6274, %r14
mov $103, %rcx
rep movsb
nop
nop
nop
nop
sub $48934, %rsi
lea addresses_WT_ht+0x2558, %rcx
nop
nop
nop
nop
xor %r9, %r9
mov (%rcx), %r13d
nop
nop
inc %r12
lea addresses_WT_ht+0x9fe0, %rsi
nop
nop
add $50417, %r12
movw $0x6162, (%rsi)
xor $4590, %r14
lea addresses_WT_ht+0xc88c, %rsi
lea addresses_WT_ht+0xbc60, %rdi
nop
nop
nop
nop
nop
xor $7687, %r12
mov $44, %rcx
rep movsl
nop
nop
nop
nop
cmp $61800, %rbx
lea addresses_normal_ht+0x1be0a, %r10
xor $338, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%r10)
nop
nop
dec %rcx
lea addresses_WC_ht+0x94c0, %rsi
lea addresses_UC_ht+0xcfb2, %rdi
nop
and $63854, %r12
mov $107, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x14f28, %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r9
nop
nop
inc %rbx
lea addresses_WT_ht+0x12ff8, %r12
nop
nop
xor %rcx, %rcx
movups (%r12), %xmm7
vpextrq $1, %xmm7, %r10
nop
nop
nop
nop
nop
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x1d7e0, %rcx
nop
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%rcx)
nop
nop
nop
xor $58609, %rcx

// Load
lea addresses_WC+0x11be0, %r15
clflush (%r15)
nop
nop
nop
nop
nop
cmp %r12, %r12
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
cmp $9761, %r15

// Load
lea addresses_D+0x2fe0, %r12
nop
inc %r14
mov (%r12), %r11
nop
add $38404, %r12

// REPMOV
lea addresses_A+0x1cffa, %rsi
lea addresses_WC+0xdf3a, %rdi
clflush (%rdi)
and $30424, %r15
mov $10, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r11, %r11

// REPMOV
lea addresses_D+0x4f30, %rsi
lea addresses_WT+0xce10, %rdi
nop
nop
nop
nop
cmp $36047, %r15
mov $44, %rcx
rep movsb
nop
nop
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_UC+0x10de0, %r14
xor %rcx, %rcx
mov (%r14), %r12
and %rax, %rax

// Load
lea addresses_D+0x1ec70, %rcx
nop
inc %r11
mov (%rcx), %di
nop
nop
nop
dec %r11

// Store
lea addresses_WT+0x3be0, %r11
nop
and %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movaps %xmm3, (%r11)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_WT+0x3be0, %rcx
nop
nop
nop
nop
xor %rax, %rax
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
