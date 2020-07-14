.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x3fa4, %rsi
lea addresses_normal_ht+0x6f5c, %rdi
nop
nop
nop
nop
nop
add $53657, %rax
mov $78, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r8
lea addresses_WC_ht+0xa1dc, %r12
nop
nop
and %r9, %r9
movl $0x61626364, (%r12)
nop
nop
add $30391, %rdi
lea addresses_D_ht+0x9b7c, %rsi
lea addresses_WT_ht+0x3d6c, %rdi
nop
add %r11, %r11
mov $32, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x7dc, %rsi
lea addresses_UC_ht+0x17cdc, %rdi
clflush (%rsi)
nop
nop
add $59521, %r11
mov $38, %rcx
rep movsw
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x5adc, %rsi
lea addresses_A_ht+0x1a1dc, %rdi
nop
nop
sub %rax, %rax
mov $101, %rcx
rep movsb
nop
nop
nop
and $61755, %rcx
lea addresses_A_ht+0x215c, %rsi
lea addresses_D_ht+0x139dc, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $64, %rcx
rep movsb
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0xd7dc, %rsi
lea addresses_UC_ht+0x75a, %rdi
clflush (%rsi)
nop
nop
and %r9, %r9
mov $65, %rcx
rep movsq
nop
add %rcx, %rcx
lea addresses_D_ht+0x139dc, %r9
clflush (%r9)
nop
nop
nop
nop
add $58113, %r12
movb $0x61, (%r9)
and $56798, %rax
lea addresses_D_ht+0x1277a, %rdi
nop
nop
nop
cmp $54504, %rax
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
nop
inc %r12
lea addresses_normal_ht+0x1175c, %r9
nop
nop
nop
nop
nop
xor $61728, %rcx
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
and $54511, %rsi
lea addresses_normal_ht+0xb9dc, %r12
nop
nop
nop
nop
nop
sub $36981, %rcx
mov (%r12), %r11w
nop
nop
nop
nop
add %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_D+0x131dc, %rdx
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovaps %ymm2, (%rdx)
sub $35249, %rcx

// Store
lea addresses_PSE+0xcf56, %rdx
nop
nop
sub $972, %rbp
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_PSE+0x1ba3c, %rdx
nop
nop
nop
add $13585, %r14
movw $0x5152, (%rdx)
nop
nop
nop
and $48777, %r10

// Faulty Load
lea addresses_RW+0x59dc, %r10
nop
nop
sub %rax, %rax
movntdqa (%r10), %xmm4
vpextrq $1, %xmm4, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'45': 284, '46': 58, '49': 134, '00': 1, '44': 12, '4d': 1}
45 46 49 45 45 49 45 45 45 46 45 49 45 45 49 45 49 45 46 45 49 46 49 45 45 49 46 45 46 49 49 45 45 49 45 49 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 44 45 49 45 49 49 49 45 49 46 46 45 45 45 45 45 45 45 45 44 46 46 45 45 45 45 49 45 45 45 45 45 45 45 45 46 45 49 45 45 45 49 45 49 49 49 45 45 45 49 45 45 45 45 45 49 49 49 45 45 45 45 45 49 49 45 45 45 45 45 45 49 49 49 45 49 45 45 46 45 49 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 49 45 49 49 45 46 45 49 45 49 45 45 45 45 49 44 45 45 49 49 45 49 45 45 45 45 49 49 45 46 45 49 46 45 49 46 46 45 45 45 46 49 45 49 45 45 49 46 45 46 45 45 45 45 46 44 49 44 00 49 45 45 45 45 49 45 45 45 45 49 45 45 49 49 45 49 45 45 45 49 45 49 46 45 46 49 45 49 45 45 45 45 45 45 49 45 45 49 49 45 45 45 45 46 45 45 45 45 46 46 49 49 49 46 49 44 45 49 49 45 49 49 45 45 46 46 46 46 49 45 46 45 49 45 45 45 45 49 45 49 45 49 46 45 46 45 45 45 49 45 49 45 45 49 45 45 49 45 45 45 46 46 45 49 45 45 46 46 45 46 44 4d 45 49 45 49 45 45 46 45 45 46 49 45 45 46 46 49 44 45 45 45 49 45 45 45 45 49 49 45 45 45 45 45 46 45 49 49 49 49 45 45 45 49 45 45 45 45 45 45 49 45 45 49 45 45 46 45 45 49 45 45 45 45 49 45 49 49 49 45 45 45 45 49 49 45 45 49 49 45 49 49 45 45 45 45 45 49 49 49 49 45 45 49 46 45 49 45 45 45 46 45 45 46 45 49 46 46 44 44 46 45 45 46 46 45 44 45 45 45 45 46 45 45 45 46 45 44 45 46 46 45 49 49 49 45 45 45 49 45 45 45 45 49 49 45 49 45 45 45 45 45 49 45 45 45 46 45 49 49 45 45 45 45 45 49 49 49 49 45 49 45 49
*/
