.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x18ed5, %r15
dec %rdi
mov (%r15), %r9w
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x17cd5, %r14
xor $28246, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
nop
xor $59246, %r9
lea addresses_D_ht+0xb594, %rcx
and %rbx, %rbx
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
cmp $58250, %r15
lea addresses_D_ht+0x78a5, %r14
nop
nop
cmp %rbx, %rbx
movb $0x61, (%r14)
nop
nop
add $45650, %rbx
lea addresses_A_ht+0x19e75, %rsi
lea addresses_A_ht+0x1fd5, %rdi
nop
nop
nop
nop
nop
sub $10083, %rbx
mov $63, %rcx
rep movsw
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0xfdd5, %rsi
lea addresses_UC_ht+0x10ad5, %rdi
nop
xor $57529, %r12
mov $17, %rcx
rep movsl
nop
add %r14, %r14
lea addresses_D_ht+0x19ad5, %rsi
lea addresses_WT_ht+0x19315, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $55, %rcx
rep movsw
nop
add $30307, %r15
lea addresses_WC_ht+0xa7bd, %rcx
nop
nop
nop
and $13556, %rsi
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_RW+0x11ad5, %r12
nop
dec %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r12)
and %r12, %r12

// Store
mov $0x775, %rbp
clflush (%rbp)
nop
nop
nop
nop
and $53181, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%rbp)

// Exception!!!
nop
xor %rax, %rax
div %rax
nop
inc %rax

// Load
lea addresses_WT+0x9ed5, %rcx
nop
nop
nop
nop
nop
xor $1982, %r12
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rbp

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rsi
nop
nop
nop
nop
nop
and $26846, %rsi

// Store
mov $0xad5, %r12
nop
nop
nop
cmp $21590, %r9
movl $0x51525354, (%r12)
nop
dec %r10

// Faulty Load
mov $0xad5, %r10
clflush (%r10)
nop
nop
nop
nop
inc %rax
mov (%r10), %rcx
lea oracles, %rcx
and $0xff, %rcx
shlq $12, %rcx
mov (%rcx,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'same': True, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'ab': 1}
ab
*/
