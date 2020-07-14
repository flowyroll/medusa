.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x133e6, %r11
nop
nop
nop
nop
inc %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%r11)
xor %r12, %r12
lea addresses_normal_ht+0x12f46, %rsi
lea addresses_UC_ht+0xe746, %rdi
nop
sub %rbx, %rbx
mov $2, %rcx
rep movsw
nop
nop
sub $5473, %r11
lea addresses_A_ht+0xa48a, %rcx
nop
nop
nop
nop
cmp $23154, %rbx
movb (%rcx), %r12b
nop
nop
dec %rsi
lea addresses_A_ht+0x17546, %r11
inc %r8
movb $0x61, (%r11)
xor %r12, %r12
lea addresses_UC_ht+0x9036, %rax
clflush (%rax)
nop
add %rsi, %rsi
mov (%rax), %edi
nop
nop
nop
nop
add $61224, %r8
lea addresses_WT_ht+0x1e301, %rcx
nop
nop
nop
add $45497, %rbx
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
sub $10328, %r8
lea addresses_D_ht+0x1b42f, %rax
nop
nop
nop
nop
sub $7071, %r8
movb $0x61, (%rax)
inc %rcx
lea addresses_UC_ht+0x12bc6, %r8
add %rdi, %rdi
movb (%r8), %r12b
nop
nop
nop
dec %r11
lea addresses_WC_ht+0x12116, %rsi
lea addresses_WC_ht+0xcb46, %rdi
nop
nop
nop
nop
add $45305, %r11
mov $108, %rcx
rep movsw
nop
and %r12, %r12
lea addresses_WT_ht+0x2146, %rax
sub $40127, %rsi
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
and $7480, %rcx
lea addresses_WC_ht+0x2746, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %rcx
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
nop
nop
add %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rax
push %rcx

// Store
lea addresses_WT+0x1ff46, %r10
clflush (%r10)
nop
dec %rax
movw $0x5152, (%r10)
nop
nop
add $36993, %rcx

// Store
lea addresses_PSE+0xffb6, %r14
nop
cmp $18466, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r14)
nop
nop
cmp $56790, %r10

// Load
lea addresses_PSE+0x14d06, %r14
nop
nop
nop
nop
nop
dec %r13
vmovntdqa (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
nop
nop
xor %rax, %rax

// Load
mov $0x7d227a0000000fc6, %rax
clflush (%rax)
nop
nop
cmp %r10, %r10
movups (%rax), %xmm2
vpextrq $0, %xmm2, %r14
nop
and $40563, %r11

// Store
lea addresses_WC+0x1ed36, %r13
nop
nop
nop
nop
nop
xor $21939, %r14
mov $0x5152535455565758, %r11
movq %r11, (%r13)
dec %r13

// Load
lea addresses_normal+0x6f46, %rax
nop
nop
nop
nop
nop
sub $23347, %r10
vmovaps (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
nop
and %r13, %r13

// Store
mov $0x6a6, %rcx
nop
nop
nop
nop
nop
inc %r11
movb $0x51, (%rcx)
nop
nop
xor $8058, %rax

// Faulty Load
lea addresses_normal+0x7f46, %r13
nop
nop
nop
nop
nop
cmp %r11, %r11
movups (%r13), %xmm5
vpextrq $0, %xmm5, %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True}}
{'src': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 1}
34
*/
