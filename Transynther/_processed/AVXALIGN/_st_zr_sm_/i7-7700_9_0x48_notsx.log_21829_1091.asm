.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x18697, %rdx
nop
nop
nop
nop
nop
and $37222, %r14
movw $0x6162, (%rdx)
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x55db, %rsi
lea addresses_A_ht+0x1a10b, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $89, %rcx
rep movsl
nop
nop
add $45179, %rsi
lea addresses_D_ht+0x1a099, %rdx
nop
nop
nop
nop
dec %rbp
movw $0x6162, (%rdx)
and %r9, %r9
lea addresses_UC_ht+0x11997, %rdx
nop
add %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0xc627, %rsi
nop
nop
add %rdi, %rdi
movb (%rsi), %r14b
add $15779, %rbp
lea addresses_UC_ht+0xd897, %rdi
nop
sub %rdx, %rdx
movw $0x6162, (%rdi)
xor $49676, %r9
lea addresses_WT_ht+0x63ef, %rbp
nop
xor $40383, %r9
mov (%rbp), %rdi
and %r14, %r14
lea addresses_WC_ht+0x2d73, %r9
clflush (%r9)
nop
nop
and %rcx, %rcx
vmovups (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
cmp %rbp, %rbp
lea addresses_D_ht+0x1bd77, %rsi
nop
sub $35113, %r9
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm2
vpextrq $0, %xmm2, %r14
nop
nop
nop
nop
nop
and $15160, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_UC+0x14c97, %r8
nop
xor %rsi, %rsi
movb $0x51, (%r8)
nop
nop
nop
nop
add $36524, %r10

// Load
lea addresses_D+0x10697, %rax
clflush (%rax)
sub $33785, %rbx
movups (%rax), %xmm6
vpextrq $0, %xmm6, %rbp
nop
sub %r10, %r10

// Store
lea addresses_US+0x12197, %rbx
clflush (%rbx)
nop
nop
xor %r15, %r15
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_D+0x30b7, %r10
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%r10)
and $2528, %rax

// Store
mov $0xfd2, %rsi
add $57844, %rax
movw $0x5152, (%rsi)
nop
nop
and %rax, %rax

// Store
lea addresses_PSE+0x4797, %r8
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r8)
nop
nop
nop
sub $9324, %r10

// Load
lea addresses_normal+0x70e7, %r10
nop
nop
nop
nop
nop
cmp $38143, %rsi
vmovntdqa (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r8
nop
nop
nop
add %r8, %r8

// Load
lea addresses_normal+0x93b3, %r8
nop
add $4539, %rsi
mov (%r8), %rax
nop
nop
nop
nop
nop
cmp %r8, %r8

// Load
lea addresses_A+0x4297, %rbp
nop
nop
nop
nop
nop
dec %rax
mov (%rbp), %bx
nop
nop
nop
nop
nop
xor %rax, %rax

// Faulty Load
lea addresses_UC+0x14c97, %rbp
nop
nop
nop
nop
sub $144, %rbx
vmovaps (%rbp), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 4}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 5}}
{'51': 1760, '00': 20069}
00 00 00 51 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 51 00 00 00 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 51 00 51 51 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 51 51 51 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 51 00 51 00 51 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 00 00 51 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 51 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 00 00 00 51 00 00 00 00 00 00 00 00
*/
