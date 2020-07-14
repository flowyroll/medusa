.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xe2c6, %rsi
lea addresses_WC_ht+0x6566, %rdi
nop
sub %rbp, %rbp
mov $36, %rcx
rep movsw
lfence
lea addresses_UC_ht+0x1e561, %rdx
nop
and $13088, %r9
movb $0x61, (%rdx)
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x1412e, %rcx
sub $30493, %rbp
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
nop
nop
xor $38981, %r8
lea addresses_normal_ht+0x18d5c, %rcx
nop
nop
nop
and $30065, %rbp
mov $0x6162636465666768, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1e906, %r9
clflush (%r9)
nop
nop
nop
cmp $34182, %rcx
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
nop
cmp $52683, %rdi
lea addresses_WC_ht+0x257e, %rsi
lea addresses_D_ht+0x8706, %rdi
cmp %r12, %r12
mov $50, %rcx
rep movsb
nop
nop
nop
sub $9954, %rbp
lea addresses_WC_ht+0x3f36, %rbp
nop
nop
cmp %rcx, %rcx
mov (%rbp), %edx
nop
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rdi

// Load
lea addresses_WT+0x1c706, %rbx
cmp $15636, %r12
mov (%rbx), %r15
nop
nop
nop
xor %rbx, %rbx

// Load
mov $0x754e960000000b66, %rbx
clflush (%rbx)
nop
nop
nop
nop
sub %rax, %rax
mov (%rbx), %di
inc %r12

// Load
lea addresses_A+0xdf06, %rbx
nop
nop
nop
nop
cmp %rax, %rax
mov (%rbx), %r15
nop
nop
nop
nop
nop
dec %rbx

// Load
lea addresses_WC+0x7d06, %rdi
xor $63725, %r8
movb (%rdi), %r12b
nop
nop
cmp $48396, %r15

// Faulty Load
lea addresses_PSE+0x16706, %r8
nop
nop
sub $39269, %r15
mov (%r8), %r12d
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'33': 149}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
