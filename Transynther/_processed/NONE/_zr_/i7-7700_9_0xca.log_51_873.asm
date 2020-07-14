.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1de41, %rsi
nop
nop
nop
xor %rbx, %rbx
mov (%rsi), %ebp
nop
nop
add $62056, %r8
lea addresses_normal_ht+0x5c1, %rsi
lea addresses_UC_ht+0xe41, %rdi
inc %rdx
mov $47, %rcx
rep movsb
nop
add $9413, %rcx
lea addresses_WT_ht+0x1be41, %rsi
nop
cmp $45824, %rdx
mov (%rsi), %ebp
sub $51872, %rcx
lea addresses_UC_ht+0x1d0a1, %r8
clflush (%r8)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movl $0x61626364, (%r8)
and $45756, %rcx
lea addresses_UC_ht+0x8c1, %rcx
clflush (%rcx)
dec %rsi
mov (%rcx), %r8d
nop
nop
nop
nop
and $32860, %r8
lea addresses_normal_ht+0x5e41, %rbx
nop
nop
nop
add %rdx, %rdx
movw $0x6162, (%rbx)
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x9bc1, %rsi
lea addresses_D_ht+0x114b9, %rdi
clflush (%rsi)
nop
and %r12, %r12
mov $45, %rcx
rep movsw
inc %rcx
lea addresses_normal_ht+0x15c41, %rdi
nop
nop
nop
nop
and $31373, %r12
mov (%rdi), %ecx
nop
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x1dd81, %rsi
lea addresses_WT_ht+0x1741, %rdi
clflush (%rdi)
cmp $23280, %rbx
mov $88, %rcx
rep movsb
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0x5fdf, %rbp
dec %r10
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_D+0xda41, %rcx
nop
sub $51961, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
nop
dec %rdx

// Load
lea addresses_UC+0x1e641, %rcx
nop
nop
nop
nop
add %r10, %r10
movb (%rcx), %dl
nop
and $7185, %r9

// Load
lea addresses_UC+0x1e641, %r10
nop
nop
add $60525, %r15
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
cmp $23476, %r15

// Faulty Load
lea addresses_UC+0x1e641, %rcx
nop
nop
nop
and $52143, %rsi
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}}
{'00': 51}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
