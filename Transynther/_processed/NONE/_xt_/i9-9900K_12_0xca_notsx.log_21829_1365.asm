.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x7edf, %r15
nop
nop
nop
nop
nop
inc %r9
mov (%r15), %edx
nop
nop
nop
dec %rdx
lea addresses_D_ht+0x16cff, %rsi
lea addresses_WC_ht+0xb6df, %rdi
nop
nop
sub %r15, %r15
mov $84, %rcx
rep movsb
nop
sub $826, %rdx
lea addresses_UC_ht+0x8ecc, %rdx
nop
nop
nop
xor $14893, %rsi
movb (%rdx), %cl
nop
nop
nop
add $41162, %rdi
lea addresses_WT_ht+0x26df, %rsi
nop
nop
add $49403, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0x102df, %r13
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%r13)
sub %rcx, %rcx
lea addresses_normal_ht+0x1e8ff, %r15
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%r15)
nop
nop
mfence
lea addresses_normal_ht+0xaadf, %rcx
nop
nop
xor %r15, %r15
movw $0x6162, (%rcx)
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x1805b, %rdi
nop
nop
nop
inc %rdx
movb (%rdi), %r9b
nop
and $13587, %r13
lea addresses_A_ht+0x10a3f, %r9
nop
cmp %rdx, %rdx
movb (%r9), %r15b
cmp $31288, %rcx
lea addresses_D_ht+0xa455, %rsi
lea addresses_A_ht+0x13d9f, %rdi
nop
nop
and $62045, %r14
mov $62, %rcx
rep movsl
dec %r13
lea addresses_WT_ht+0x62bf, %rsi
lea addresses_normal_ht+0xccdf, %rdi
nop
nop
nop
add %r9, %r9
mov $79, %rcx
rep movsb
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x139b1, %r9
nop
nop
nop
nop
nop
xor $64143, %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r9)
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x17b8f, %r13
nop
nop
cmp $10079, %rdi
mov (%r13), %r15d
nop
nop
nop
nop
cmp $32016, %r15
lea addresses_UC_ht+0x1bbdf, %r13
nop
nop
nop
cmp $27533, %rcx
mov (%r13), %r9d
nop
nop
nop
nop
sub $43315, %r13
lea addresses_UC_ht+0x119df, %rdx
sub $32257, %r9
movw $0x6162, (%rdx)
nop
nop
nop
nop
and $24816, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x4f47, %r14
nop
and %r12, %r12
movb $0x51, (%r14)
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WT+0x12c3f, %rdx
dec %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm3
and $0xffffffffffffffc0, %rdx
vmovaps %ymm3, (%rdx)
nop
cmp $1849, %rdx

// Store
lea addresses_UC+0x18c4f, %rdx
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rdx)
nop
inc %rsi

// REPMOV
lea addresses_UC+0xbbdf, %rsi
lea addresses_WC+0x469f, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $4, %rcx
rep movsw
nop
nop
and $27798, %rax

// Store
lea addresses_WT+0x13df, %r14
clflush (%r14)
nop
nop
nop
nop
inc %rax
movl $0x51525354, (%r14)
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_UC+0x1927f, %r8
nop
nop
nop
add $47888, %rcx
movb $0x51, (%r8)
nop
nop
nop
nop
xor %rax, %rax

// Faulty Load
lea addresses_normal+0x116df, %rcx
nop
nop
nop
nop
nop
xor %r14, %r14
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
