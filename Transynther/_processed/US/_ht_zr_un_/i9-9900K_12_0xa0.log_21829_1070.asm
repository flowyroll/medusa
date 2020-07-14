.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x4b4c, %rcx
nop
inc %r15
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0xb00, %r14
nop
add %r13, %r13
mov $0x6162636465666768, %r15
movq %r15, (%r14)
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x16294, %rsi
lea addresses_D_ht+0xd280, %rdi
nop
nop
sub $11856, %r14
mov $47, %rcx
rep movsw
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x14da8, %r15
clflush (%r15)
nop
cmp $21190, %rsi
movl $0x61626364, (%r15)
nop
and $4832, %rsi
lea addresses_UC_ht+0x9f00, %rcx
clflush (%rcx)
nop
dec %rbx
movb (%rcx), %r14b
nop
and $32924, %rbx
lea addresses_D_ht+0x13560, %r8
nop
nop
nop
sub $54349, %r14
mov (%r8), %rbx
nop
nop
nop
dec %rbx
lea addresses_A_ht+0x15f00, %r14
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%r14)
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0xa300, %r8
clflush (%r8)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x61, (%r8)
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x16580, %rbx
nop
nop
nop
nop
nop
and $13504, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rbx)
nop
xor %rcx, %rcx
lea addresses_A_ht+0x1ec00, %r8
nop
nop
nop
nop
nop
cmp %r13, %r13
movw $0x6162, (%r8)
nop
sub $6705, %r8
lea addresses_WC_ht+0x36c0, %rsi
lea addresses_normal_ht+0x1cf86, %rdi
nop
nop
nop
nop
nop
xor $48575, %r8
mov $6, %rcx
rep movsq
nop
nop
nop
nop
cmp $24050, %rsi
lea addresses_WC_ht+0x15b60, %rsi
lea addresses_normal_ht+0x210e, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $24, %rcx
rep movsq
nop
nop
nop
xor $39692, %r15
lea addresses_UC_ht+0xbe0, %rsi
lea addresses_WT_ht+0x1bb00, %rdi
nop
and %r8, %r8
mov $27, %rcx
rep movsb
inc %r13
lea addresses_D_ht+0x32cc, %r15
cmp %rcx, %rcx
movups (%r15), %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_A+0x16500, %r12
nop
nop
add %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, (%r12)
nop
cmp %r13, %r13

// Store
lea addresses_A+0x1faa, %r12
nop
nop
sub $55625, %r8
movb $0x51, (%r12)
nop
nop
cmp $20181, %r13

// Faulty Load
lea addresses_US+0x9300, %rdi
nop
nop
dec %rdx
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 8}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'48': 2221, '94': 4, '00': 12686, 'b2': 1, '47': 6914, 'b8': 1, '8e': 1, '22': 1}
00 00 48 00 00 00 48 48 00 00 00 00 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 48 00 48 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 47 00 47 00 47 00 00 00 47 00 47 00 47 00 47 00 00 47 00 00 47 00 47 00 47 00 47 00 47 00 48 00 47 48 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 48 47 48 47 00 47 00 00 00 00 00 00 48 00 00 00 48 48 48 00 00 00 00 00 48 00 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 00 48 00 00 00 00 00 48 00 48 00 48 48 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 48 00 00 00 48 48 00 00 00 48 48 47 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 48 00 00 00 48 48 47 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 48 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 48 47 00 47 00 47 48 47 00 47 00 47 48 00 00 00 48 48 00 00 00 00 00 48 00 48 00 00 00 00 00 48 00 48 48 00 00 00 00 00 48 48 00 00 00 00 00 48 48 00 00 00 48 00 00 00 00 00 48 48 47 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 48 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 48 47 00 00 00 48 47 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 00 00 00 00 47 00 47 48 47 00 47 00 47 00 47 00 47 00 47 00 47 48 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 48 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 48 47 00 47 00 47 00 47 00 47 00 00 47 48 47 00 47 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 48 00 00 00 00 00 48 00 48 48 00 00 00 00 00 48 48 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 00 48 00 47 00 47 00 47 00 47 00 47 48 48 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 48 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 48 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 48 00 48 48 00 00 00 00 48 48 48 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 48 48 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 48 47 00 47 00 47 00 47 00 47
*/
