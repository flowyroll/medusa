.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x70de, %r10
nop
nop
nop
nop
add $62673, %r12
movl $0x61626364, (%r10)
sub $6942, %r13
lea addresses_normal_ht+0xcca1, %r10
nop
nop
nop
nop
nop
sub $31983, %rsi
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x814a, %r15
and %rbx, %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm2
and $0xffffffffffffffc0, %r15
movaps %xmm2, (%r15)
nop
and %r13, %r13
lea addresses_UC_ht+0x1e54a, %r15
add %r10, %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
and $0xffffffffffffffc0, %r15
movaps %xmm0, (%r15)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0xb8ba, %rsi
nop
nop
nop
xor $30193, %r13
movb (%rsi), %r12b
nop
dec %rsi
lea addresses_A_ht+0x254a, %rsi
nop
nop
and %rdi, %rdi
mov (%rsi), %r12d
sub %r15, %r15
lea addresses_WC_ht+0x12baa, %rsi
lea addresses_normal_ht+0x894a, %rdi
nop
nop
nop
lfence
mov $55, %rcx
rep movsw
nop
nop
nop
nop
cmp $60178, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rbx
push %rcx

// Store
lea addresses_A+0x4eca, %rbx
nop
nop
nop
nop
dec %r11
movb $0x51, (%rbx)
nop
nop
nop
nop
xor $1971, %rax

// Load
lea addresses_RW+0xe93a, %r11
nop
nop
nop
nop
sub $36469, %rcx
movaps (%r11), %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
add %r10, %r10

// Store
lea addresses_US+0x1d34a, %rbx
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rbx)
add %rax, %rax

// Store
lea addresses_PSE+0x1ebca, %rax
nop
nop
xor $38040, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rax)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_A+0x12630, %rcx
nop
nop
nop
nop
nop
sub $7929, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
nop
nop
nop
xor $43114, %r11

// Faulty Load
lea addresses_WT+0x11d4a, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add %rax, %rax
vmovaps (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'48': 16562, '00': 5267}
00 00 48 00 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 00 48 48 00 48 00 00 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 00 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 00 48 48 48 48 48 48 00 48 00 48 00 48 48 48 48 48 00 48 48 48 00 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 48 48 48 00 48 48 00 48 00 48 00 48 48 48 48 48 48 00 00 00 48 48 00 00 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 00 00 48 00 48 00 48 48 00 48 48 00 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 00 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 00 48 00 48 48 48 48 48 48 48 48 00 48 00 48 00 48 48 00 48 48 48 48 00 48 00 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 00 48 00 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 48 00 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 00 48 48 00 48 48 48 00 48 48 48 00 48 00 48 00 48 48 48 48 48 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 00 48 00 48 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 00 00 48 48 48 00 48 48 48 00 48 00 48 00 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 00 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 48 48 48 00 00 00 48 00 48 00 48 48 00 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 00 48 48 48 00 48 00 00 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 00 00 48 48 00 48 48 48 48 48 48 00 00 48 48 48 00 48 48 00 48 00 00 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 00 00 00 00 48 48 00 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 00 48 00 00 48 48 00 00 48 00 48 48 48 48 00 48 48 48 48 00 48 48 48 00 48 00 48 48 48 48 48 48 00 48 48 48 00 48 00 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 00 48 48 00 48 48 00 48 00 00 48 48 00 48 00 48 48 48 48 00 00 48 48 00 48 48 48 48 48 48 48 00 00 00 48 00 48 00 00 48 48 48 48 00 48 48 48 48 00 48 48 48 00 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 00 00 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 00 00 48 48 48 00 48 48 48 00 00 48 48 00 48 00 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 00 00 48 00 48 48 48 00 48 48 48 48 48 48 00 48 00 48 48 00 48 00 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 00 48 48 00 48 48 00 00 48 48 48 48 00 48 48 48 48 00 00 00 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48
*/
