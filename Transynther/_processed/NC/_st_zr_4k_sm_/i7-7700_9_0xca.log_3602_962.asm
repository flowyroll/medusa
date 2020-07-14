.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xa0b1, %rax
nop
nop
nop
nop
nop
cmp $61811, %r9
movl $0x61626364, (%rax)
nop
nop
and $21042, %rbx
lea addresses_WC_ht+0xd1, %r14
nop
nop
nop
nop
nop
mfence
vmovups (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
cmp %r14, %r14
lea addresses_D_ht+0x4f99, %r13
nop
nop
nop
nop
cmp %r12, %r12
mov (%r13), %r14w
sub %r14, %r14
lea addresses_A_ht+0x19fb5, %rsi
lea addresses_UC_ht+0x1d4d1, %rdi
clflush (%rsi)
xor %r14, %r14
mov $59, %rcx
rep movsl
nop
cmp %r12, %r12
lea addresses_WT_ht+0x102f1, %rdi
nop
nop
nop
xor %r9, %r9
mov (%rdi), %ax
add $20311, %r14
lea addresses_normal_ht+0xc711, %rsi
lea addresses_WC_ht+0x94d1, %rdi
nop
nop
nop
nop
nop
and $43512, %r9
mov $111, %rcx
rep movsq
nop
add %r13, %r13
lea addresses_WT_ht+0x52d1, %rcx
sub $48986, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rcx)
nop
nop
sub $34154, %r14
lea addresses_WT_ht+0xc7d1, %rsi
nop
xor $60532, %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm2
and $0xffffffffffffffc0, %rsi
movaps %xmm2, (%rsi)
sub %r9, %r9
lea addresses_normal_ht+0xf0b1, %rcx
sub %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
nop
dec %r14
lea addresses_D_ht+0x79d1, %rbx
nop
nop
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm1
movups %xmm1, (%rbx)
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rbp
push %rdi
push %rdx

// Store
lea addresses_US+0x16bd1, %rbp
nop
nop
nop
sub $29083, %r11
movl $0x51525354, (%rbp)
nop
nop
nop
sub $40946, %rdx

// Store
lea addresses_WC+0x13451, %r11
xor $5777, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
inc %r13

// Store
lea addresses_WT+0x33f1, %r8
nop
nop
nop
nop
cmp $16399, %rdi
movl $0x51525354, (%r8)
nop
xor $47827, %rdi

// Store
lea addresses_PSE+0x9851, %r13
clflush (%r13)
nop
nop
nop
nop
nop
xor $34048, %rdx
movl $0x51525354, (%r13)
nop
nop
nop
nop
dec %r8

// Store
lea addresses_PSE+0xa1d1, %r11
inc %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r11)
nop
nop
cmp %r8, %r8

// Store
lea addresses_PSE+0x18517, %r10
nop
nop
nop
nop
sub $30369, %rdx
movb $0x51, (%r10)
nop
nop
nop
nop
inc %rbp

// Store
mov $0x58334500000001d1, %r13
nop
dec %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%r13)
nop
and %r8, %r8

// Faulty Load
mov $0x58334500000001d1, %r10
nop
nop
nop
cmp %rdi, %rdi
mov (%r10), %bp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'00': 33, '58': 3569}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
