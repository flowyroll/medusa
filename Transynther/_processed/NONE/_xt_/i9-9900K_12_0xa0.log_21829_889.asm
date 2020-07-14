.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xefe5, %rsi
lea addresses_normal_ht+0x18e5, %rdi
and %rdx, %rdx
mov $59, %rcx
rep movsl
nop
nop
nop
add %r15, %r15
lea addresses_normal_ht+0x19be5, %r12
nop
nop
nop
add $63451, %r15
movups (%r12), %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0xc065, %rcx
clflush (%rcx)
nop
cmp %rdi, %rdi
movb $0x61, (%rcx)
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x30e5, %rdi
nop
nop
nop
nop
sub $25857, %rdx
vmovups (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x74c5, %rcx
nop
nop
nop
nop
nop
add %r15, %r15
movb $0x61, (%rcx)
nop
nop
nop
nop
add $25692, %rdx
lea addresses_WC_ht+0x7865, %rsi
lea addresses_A_ht+0x18825, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $29, %rcx
rep movsq
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x6c45, %rsi
lea addresses_normal_ht+0x1aae5, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp $37271, %r9
mov $74, %rcx
rep movsw
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x19a85, %rsi
lea addresses_D_ht+0x1c805, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $48115, %rdx
mov $50, %rcx
rep movsb
nop
nop
and $20913, %rdi
lea addresses_A_ht+0x10bbf, %r12
nop
nop
nop
nop
sub %rdi, %rdi
movups (%r12), %xmm0
vpextrq $0, %xmm0, %r9
xor $10597, %r15
lea addresses_normal_ht+0x116e5, %rdi
nop
nop
nop
xor $1217, %r15
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x132b5, %rdx
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x659d, %r9
sub %rcx, %rcx
mov (%r9), %rdi
nop
nop
nop
cmp $64403, %rsi
lea addresses_WT_ht+0x15665, %r9
nop
nop
nop
mfence
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rax
push %rsi

// Store
lea addresses_WT+0x195f5, %r15
nop
nop
nop
dec %r12
mov $0x5152535455565758, %r8
movq %r8, (%r15)
nop
nop
nop
nop
cmp $58447, %r9

// Store
lea addresses_WT+0xf30d, %rsi
nop
nop
and %r14, %r14
movw $0x5152, (%rsi)
cmp %rax, %rax

// Faulty Load
lea addresses_PSE+0x35e5, %r12
nop
nop
nop
nop
nop
sub $27428, %rsi
mov (%r12), %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rsi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
