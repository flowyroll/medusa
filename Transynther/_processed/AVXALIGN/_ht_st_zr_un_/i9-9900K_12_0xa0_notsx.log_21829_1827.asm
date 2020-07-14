.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xa5c1, %r8
nop
nop
inc %rcx
movb $0x61, (%r8)
nop
inc %r15
lea addresses_D_ht+0x11d1, %rsi
lea addresses_normal_ht+0x102c1, %rdi
nop
dec %rdx
mov $29, %rcx
rep movsl
xor $17999, %rdi
lea addresses_D_ht+0x5cb9, %rsi
lea addresses_UC_ht+0xb4c1, %rdi
nop
nop
sub %r9, %r9
mov $13, %rcx
rep movsq
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x17539, %rsi
xor $35012, %r12
movl $0x61626364, (%rsi)
nop
nop
nop
nop
add $1004, %r12
lea addresses_A_ht+0x9311, %rsi
lea addresses_WC_ht+0x11c41, %rdi
and %r12, %r12
mov $102, %rcx
rep movsb
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x14c1, %rcx
nop
nop
cmp $35663, %r9
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
nop
cmp %r15, %r15
lea addresses_WC_ht+0x9911, %rdx
nop
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rdx)
nop
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WT+0x19ac1, %rbx
nop
nop
nop
nop
add %r15, %r15
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_A+0x19ec1, %rbx
clflush (%rbx)
nop
nop
nop
nop
add $7140, %rdx
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
xor $55248, %rax

// Store
lea addresses_WT+0x1f9c5, %rbx
nop
nop
nop
nop
lfence
mov $0x5152535455565758, %r15
movq %r15, (%rbx)
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Store
mov $0xdc1, %rdx
nop
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_normal+0x19921, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and $25385, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rsi)
nop
xor $45117, %rbx

// Load
lea addresses_RW+0xc6c1, %rcx
nop
sub %rax, %rax
mov (%rcx), %si
nop
nop
add $37756, %rdx

// Faulty Load
lea addresses_WT+0x19ac1, %rbx
nop
xor $50965, %rcx
movaps (%rbx), %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'bd': 5, '85': 3, '40': 14, '8e': 1, '7f': 1, 'd1': 1, '35': 1, '5c': 1, '42': 8, '46': 2365, '7a': 1, '00': 16638, '15': 3, '45': 2769, '43': 1, 'ff': 13, '23': 1, '84': 3}
45 45 00 00 00 46 00 45 00 00 00 00 00 00 45 00 45 45 00 00 00 00 00 00 45 00 45 00 00 46 00 45 00 45 00 00 00 00 00 00 00 00 46 40 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 45 45 00 00 45 00 00 00 46 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 45 00 00 00 00 46 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 45 00 45 46 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 45 00 46 00 45 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 45 00 45 00 00 46 45 00 00 45 45 00 46 00 46 00 00 00 45 00 45 00 00 00 46 00 46 00 46 00 00 46 00 00 45 00 45 00 46 00 46 00 00 00 00 00 00 46 46 00 45 00 46 00 00 45 46 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 46 00 45 00 00 00 00 00 00 00 00 00 46 00 00 00 00 45 00 00 00 00 45 00 00 46 00 45 00 45 00 00 46 46 00 00 45 45 00 46 00 45 00 46 00 00 45 00 45 00 45 00 00 00 45 00 46 00 00 46 00 46 00 45 00 00 00 00 00 00 45 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 00 00 46 45 00 46 00 00 46 00 00 46 00 46 00 45 00 46 00 00 00 00 00 00 00 46 00 45 45 00 45 00 46 00 45 45 00 00 00 00 45 00 00 46 00 46 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 46 00 00 45 00 00 00 00 00 45 00 45 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 46 00 46 00 00 00 00 00 46 00 00 00 00 46 00 46 00 45 00 00 45 00 45 00 00 00 00 45 00 46 46 00 00 00 00 45 00 00 00 00 00 45 45 00 00 45 00 45 00 00 00 00 46 00 00 00 46 00 00 00 00 45 00 00 00 00 45 00 46 00 45 00 45 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 45 46 00 00 00 00 45 00 00 00 00 46 00 46 00 00 45 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 46 00 00 00 45 00 00 00 00 00 46 00 00 46 00 46 00 45 00 00 00 00 00 00 46 00 45 00 00 45 00 46 00 00 00 00 46 00 45 00 00 45 00 46 00 00 00 00 00 46 00 00 45 00 00 00 00 00 00 00 45 00 46 00 45 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 45 45 00 00 45 00 00 46 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 46 00 00 45 00 45 00 00 00 00 00 46 00 00 45 00 46 45 00 00 45 00 45 00 00 00 00 45 00 00 40 45 00 00 00 45 45 00 00 00 00 00 45 00 00 45 00 00 46 00 46 00 00 00 00 00 00 46 45 00 00 00 00 00 46 00 46 00 46 00 00 00 00 45 00 00 00 45 00 00 00 00 00 45 00 45 00 46 00 00 00 00 45 00 00 46 00 00 00 00 00 00 00 46 00 45 00 45 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 45 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 45 00 00 00 45 00 45 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 46 00 46 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 45 00 00 00 00 00 00 00 46 00 00 00 45 00 00 00 46 00 00 45 00 45 00 00 45 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 46 00 00 00 45 00 46 00 46 00 45 00 00 46 00 00 46 00 46 00 46 00 00 00 45 45 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45
*/
