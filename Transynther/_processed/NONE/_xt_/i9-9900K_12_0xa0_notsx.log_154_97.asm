.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x7f5c, %r12
clflush (%r12)
nop
sub %rbx, %rbx
and $0xffffffffffffffc0, %r12
vmovntdqa (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
nop
nop
cmp $64344, %r15
lea addresses_normal_ht+0x177dc, %r14
nop
nop
cmp $15202, %r8
vmovups (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
nop
nop
xor $34638, %rbx
lea addresses_WC_ht+0x1ebdc, %r8
nop
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
dec %rbx
lea addresses_normal_ht+0x17edc, %rbp
nop
sub %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
nop
nop
sub $17972, %rbp
lea addresses_D_ht+0x525c, %rax
clflush (%rax)
nop
nop
sub $56867, %rbx
movb (%rax), %r8b
nop
nop
add $29356, %rbp
lea addresses_A_ht+0x1bdc, %rax
nop
nop
nop
nop
nop
inc %rbp
movb $0x61, (%rax)
nop
nop
nop
nop
nop
sub $51487, %rbp
lea addresses_UC_ht+0x71bc, %r15
nop
nop
nop
nop
xor %rax, %rax
movw $0x6162, (%r15)
nop
sub %rax, %rax
lea addresses_WC_ht+0x15310, %rsi
lea addresses_D_ht+0x46d4, %rdi
nop
nop
and %r14, %r14
mov $101, %rcx
rep movsq
nop
nop
nop
nop
nop
add $31372, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx

// Store
mov $0x10c13f000000031c, %rcx
nop
nop
nop
xor $14559, %r8
movw $0x5152, (%rcx)
nop
cmp $37531, %rax

// Store
lea addresses_PSE+0x12e5c, %r12
nop
nop
and $13000, %r10
movl $0x51525354, (%r12)
nop
nop
nop
inc %r12

// Store
lea addresses_WT+0x2f4, %r12
nop
nop
nop
and $62056, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r12)
nop
nop
sub $27344, %r9

// Faulty Load
lea addresses_RW+0x183dc, %r10
nop
nop
nop
nop
nop
sub %rax, %rax
movups (%r10), %xmm1
vpextrq $0, %xmm1, %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}}
{'32': 154}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
