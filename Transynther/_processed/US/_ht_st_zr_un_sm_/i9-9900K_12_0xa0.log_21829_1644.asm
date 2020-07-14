.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x8b83, %rdi
nop
nop
nop
nop
nop
and $8779, %r8
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x1cf43, %rbx
sub $48716, %r12
movb $0x61, (%rbx)
xor $5317, %r15
lea addresses_UC_ht+0x1c4a3, %r12
nop
nop
nop
nop
nop
xor %r10, %r10
movb $0x61, (%r12)
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x3363, %r10
clflush (%r10)
nop
nop
nop
add $22944, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
nop
nop
add $16630, %r9
lea addresses_normal_ht+0x1bcdf, %r9
nop
nop
nop
nop
cmp $16700, %r10
mov $0x6162636465666768, %r15
movq %r15, %xmm7
and $0xffffffffffffffc0, %r9
vmovntdq %ymm7, (%r9)
nop
nop
inc %r10
lea addresses_normal_ht+0x2743, %rsi
lea addresses_normal_ht+0x1e643, %rdi
nop
nop
and %r8, %r8
mov $6, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x4e05, %r9
inc %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x18cc3, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub $7054, %r9
movb (%rsi), %r10b
xor $23524, %rcx
lea addresses_WT_ht+0x1b043, %rsi
lea addresses_A_ht+0x3c83, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
sub %r9, %r9
mov $86, %rcx
rep movsw
nop
nop
add $22855, %rcx
lea addresses_D_ht+0x10143, %rsi
lea addresses_WC_ht+0x22db, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $40, %rcx
rep movsw
nop
cmp $10912, %r10
lea addresses_WC_ht+0x12f17, %rsi
lea addresses_WT_ht+0x1a3, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $53, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x6e03, %r15
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x61, (%r15)
and %rdi, %rdi
lea addresses_WT_ht+0x13483, %r12
cmp %r8, %r8
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
sub %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x6943, %rcx
clflush (%rcx)
nop
nop
nop
xor $47963, %rbx
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Load
lea addresses_US+0x136f3, %rbx
nop
nop
nop
nop
nop
cmp $51480, %r10
mov (%rbx), %rbp
nop
cmp %rsi, %rsi

// Store
lea addresses_normal+0xfbc3, %r12
nop
nop
add $48249, %rdi
movw $0x5152, (%r12)
nop
nop
cmp $14387, %rdi

// Store
mov $0x5ec060000000523, %rsi
nop
nop
dec %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovaps %ymm7, (%rsi)
nop
nop
nop
add %r10, %r10

// Store
lea addresses_US+0x9343, %r12
clflush (%r12)
xor $50207, %r10
movb $0x51, (%r12)
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_US+0x9343, %rbx
clflush (%rbx)
nop
add %r10, %r10
vmovups (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'08': 3, '49': 19487, '58': 1, '00': 2336, '72': 2}
49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 00 00 00 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 49 00 00 49 49 49 49 49 49 00 49 49 00 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 00 49 49 49 00 49 49 49 49 00 49 49 49 00 49 49 49 49 00 49 49 49 00 49 00 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 49 00 49 49 49 49 00 49 49 49 49 49 00 49 49 00 49 00 49 49 49 49 49 49 49 00 49 49 49 00 00 00 49 49 49 49 49 49 49 49 49 49 49 00 49 49 00 00 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 00 49 49 49 49 00 49 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 00 49 49 49 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 00 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 49 49 49 00 49 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 00 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 49 49 00 00 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 49 49 49 49
*/
