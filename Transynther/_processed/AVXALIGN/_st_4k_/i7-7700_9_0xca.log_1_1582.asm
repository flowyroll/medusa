.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1446e, %rsi
lea addresses_D_ht+0x1602, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $23, %rcx
rep movsb
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x150a3, %rdi
nop
nop
cmp %rbp, %rbp
mov (%rdi), %r8
nop
cmp $18310, %rsi
lea addresses_WC_ht+0x1ccc2, %rsi
lea addresses_WT_ht+0x18e4a, %rdi
nop
sub %r10, %r10
mov $87, %rcx
rep movsw
nop
nop
nop
nop
add $50859, %rbp
lea addresses_WC_ht+0x1582, %rsi
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rsi)
nop
xor $5867, %rbx
lea addresses_normal_ht+0x1acce, %rcx
and %rbp, %rbp
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0xf682, %rsi
lea addresses_D_ht+0x1d492, %rdi
and %r12, %r12
mov $89, %rcx
rep movsq
inc %rsi
lea addresses_WT_ht+0xff92, %rbp
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %rbp
vmovaps %ymm7, (%rbp)
nop
nop
nop
nop
cmp $48647, %rdi
lea addresses_D_ht+0xb782, %rsi
lea addresses_WC_ht+0x5336, %rdi
nop
dec %r10
mov $26, %rcx
rep movsw
nop
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rsi

// Store
lea addresses_WT+0x19082, %rax
nop
nop
nop
inc %r12
movl $0x51525354, (%rax)
nop
nop
nop
nop
xor $7322, %rax

// Store
mov $0x5a235a0000000482, %rax
clflush (%rax)
nop
sub $47494, %rsi
movb $0x51, (%rax)
nop
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_US+0x17db2, %r9
and %rsi, %rsi
movb $0x51, (%r9)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_normal+0x3c82, %rax
nop
nop
dec %r13
movl $0x51525354, (%rax)
nop
nop
nop
nop
cmp %rbx, %rbx

// Load
lea addresses_D+0xd682, %r13
nop
nop
nop
nop
nop
dec %r9
mov (%r13), %bx
nop
nop
nop
dec %r8

// Load
lea addresses_WC+0x15c82, %r13
nop
dec %rax
mov (%r13), %r9
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_PSE+0x862e, %rax
nop
nop
add %r13, %r13
movl $0x51525354, (%rax)
sub $13855, %rbx

// Store
lea addresses_RW+0x2d42, %rsi
and %r8, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movaps %xmm6, (%rsi)
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_US+0xcc82, %r12
nop
nop
nop
nop
nop
xor $62233, %r9
movaps (%r12), %xmm3
vpextrq $0, %xmm3, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 4, 'NT': True, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}}
{'54': 1}
54
*/
