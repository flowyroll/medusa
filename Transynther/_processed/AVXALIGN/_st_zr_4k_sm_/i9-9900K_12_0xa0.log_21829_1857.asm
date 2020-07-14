.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x6117, %rsi
lea addresses_normal_ht+0x9537, %rdi
nop
nop
nop
and $1054, %rbp
mov $79, %rcx
rep movsw
inc %rsi
lea addresses_A_ht+0x1d9d, %rdi
nop
add %r14, %r14
movl $0x61626364, (%rdi)
nop
inc %rcx
lea addresses_normal_ht+0xbe61, %rax
clflush (%rax)
nop
nop
nop
add $47555, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
xor $59531, %rdi
lea addresses_normal_ht+0x16f77, %rdi
nop
add %r12, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm1
movups %xmm1, (%rdi)
nop
sub $17964, %rbp
lea addresses_WC_ht+0xb8b7, %rax
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm5
vmovups %ymm5, (%rax)
sub %r14, %r14
lea addresses_normal_ht+0x6937, %rdi
nop
nop
nop
nop
nop
cmp $16088, %r14
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
xor $26003, %rax
lea addresses_WT_ht+0x7d37, %rsi
lea addresses_WT_ht+0x3e17, %rdi
nop
xor $9873, %r9
mov $67, %rcx
rep movsq
nop
dec %rcx
lea addresses_normal_ht+0x5307, %r9
nop
nop
nop
nop
and %rsi, %rsi
mov (%r9), %rbp
nop
inc %rsi
lea addresses_WT_ht+0x10f37, %rcx
nop
sub $45350, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
xor $62213, %r14
lea addresses_A_ht+0x11d67, %r14
clflush (%r14)
nop
nop
nop
nop
nop
sub $10726, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r14)
nop
nop
nop
cmp $45420, %r12
lea addresses_A_ht+0x76a3, %rsi
lea addresses_UC_ht+0xb537, %rdi
add %rbp, %rbp
mov $97, %rcx
rep movsl
nop
nop
xor $40614, %rbp
lea addresses_UC_ht+0x4ae2, %rdi
nop
nop
xor $39418, %r12
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
nop
nop
nop
nop
nop
add $64428, %rcx
lea addresses_UC_ht+0x14937, %r9
nop
nop
nop
nop
add $45002, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r9)
sub %r9, %r9
lea addresses_A_ht+0x9057, %rcx
nop
nop
nop
nop
nop
cmp $7004, %rbp
mov (%rcx), %ax
nop
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rax
push %rsi

// Store
mov $0x937, %r9
clflush (%r9)
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%r9)
nop
nop
cmp %r12, %r12

// Store
lea addresses_A+0x8837, %rax
nop
nop
nop
nop
cmp %r12, %r12
movw $0x5152, (%rax)
nop
nop
nop
and $9338, %r9

// Load
lea addresses_A+0x9137, %rax
nop
nop
nop
nop
nop
inc %r13
mov (%rax), %r9d
and %r13, %r13

// Load
lea addresses_UC+0x11137, %rsi
nop
nop
nop
inc %rax
movb (%rsi), %r13b
nop
nop
nop
and %r13, %r13

// Load
mov $0xc27, %r11
nop
add %r12, %r12
mov (%r11), %r15d
nop
nop
and $55126, %r9

// Store
lea addresses_PSE+0x11937, %r13
nop
nop
nop
nop
add $19181, %r15
movl $0x51525354, (%r13)
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_D+0x173b7, %rax
nop
nop
xor $6456, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_PSE+0x11937, %r13
cmp %r15, %r15
movaps (%r13), %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'54': 20628, '00': 1201}
54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00
*/
