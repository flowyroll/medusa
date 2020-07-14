.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xf7db, %rdi
nop
nop
cmp $34109, %rcx
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x11223, %rdx
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
add %r9, %r9
lea addresses_UC_ht+0x7b5b, %rsi
lea addresses_normal_ht+0x6f5b, %rdi
nop
nop
xor $57936, %r13
mov $58, %rcx
rep movsq
nop
nop
nop
nop
dec %r13
lea addresses_UC_ht+0x1285b, %rsi
clflush (%rsi)
nop
nop
nop
nop
and %r13, %r13
mov (%rsi), %di
nop
add $38727, %r9
lea addresses_WC_ht+0xc21b, %rcx
nop
nop
nop
nop
sub %rdi, %rdi
movb (%rcx), %dl
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0xdc3b, %rsi
lea addresses_D_ht+0x16beb, %rdi
clflush (%rdi)
nop
nop
cmp %r8, %r8
mov $74, %rcx
rep movsw
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0xb45b, %rcx
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x15a5b, %rsi
lea addresses_UC_ht+0x3c17, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $19945, %r14
mov $124, %rcx
rep movsw
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x6bdb, %rcx
clflush (%rcx)
nop
nop
nop
and %rdi, %rdi
mov (%rcx), %r14
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x1c5db, %rsi
lea addresses_D_ht+0x7feb, %rdi
sub $51592, %r9
mov $72, %rcx
rep movsb
nop
nop
sub $26507, %rcx
lea addresses_WT_ht+0xdfdb, %r8
sub %rcx, %rcx
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
add $5724, %rdi
lea addresses_normal_ht+0x1529b, %r14
nop
nop
nop
nop
nop
cmp $46754, %rsi
movl $0x61626364, (%r14)
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x159ff, %rsi
lea addresses_UC_ht+0x15faf, %rdi
nop
nop
nop
nop
nop
cmp $24043, %rdx
mov $83, %rcx
rep movsl
add %rdi, %rdi
lea addresses_D_ht+0x7db, %rsi
lea addresses_A_ht+0x1654f, %rdi
nop
nop
nop
and $64944, %r13
mov $41, %rcx
rep movsq
nop
nop
nop
and %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rax

// Store
lea addresses_WC+0xcfdb, %rax
nop
nop
nop
nop
xor %r14, %r14
movw $0x5152, (%rax)
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_UC+0x1bdb, %rax
nop
nop
xor $718, %r15
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_PSE+0x14bdb, %rax
nop
nop
nop
sub %r12, %r12
vmovntdqa (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'46': 298, '00': 949, '49': 4, '47': 1}
00 00 46 00 46 00 00 46 00 46 46 00 00 00 00 46 00 00 46 00 46 00 46 00 00 00 00 00 00 00 46 00 00 00 46 00 46 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 46 00 46 00 00 00 00 00 46 46 00 00 46 46 00 46 00 47 00 00 00 46 00 00 46 46 00 00 00 00 46 46 00 00 00 46 00 00 46 46 00 00 00 00 00 00 00 46 00 46 46 46 00 46 46 00 00 46 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 46 00 00 46 00 46 00 00 00 46 46 00 46 00 00 00 46 46 46 00 00 46 00 46 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 46 00 46 00 00 46 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 46 00 46 00 00 00 00 00 46 46 00 46 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 46 00 46 46 00 00 46 00 46 00 46 46 46 00 00 46 00 00 00 00 00 00 00 00 00 46 46 46 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 46 46 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 46 00 46 46 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 46 46 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 00 00 00 46 46 00 00 46 46 46 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 46 46 00 00 46 00 00 46 00 00 00 00 46 00 00 00 00 46 00 46 00 00 00 00 46 46 46 00 00 00 46 00 00 46 00 00 46 00 00 00 46 00 00 46 00 46 46 46 00 00 00 00 00 00 00 00 46 00 00 46 46 46 46 46 00 00 00 00 00 00 00 00 00 00 46 46 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 46 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 46 00 46 46 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 46 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 46 46 00 46 00 00 46 00 46 00 00 46 00 46 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 46 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 46 00 46 00 46 00 00 46 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 00 46 46 46 00 00 00 46 00 46 46 00 00 46 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 46 46 00 00 46 00 00 00 46 00 00 46 00 00 46 00 00 00 46 00 46 00 00 00 46 00 46 00 00 00 00 00 46 00 46 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 49 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 49 00 00 00 00 00 00 46 49 00 46 00 46 46 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00
*/
