.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1706f, %rsi
lea addresses_UC_ht+0x12daf, %rdi
nop
nop
nop
nop
inc %r9
mov $31, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $37044, %rsi
lea addresses_WT_ht+0x3def, %r8
nop
nop
nop
sub $57365, %r10
mov (%r8), %si
nop
nop
nop
nop
dec %r9
lea addresses_A_ht+0x85ef, %r8
nop
nop
cmp %r12, %r12
movups (%r8), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x7fef, %r8
nop
inc %rdi
movb (%r8), %r9b
nop
nop
nop
sub $49665, %r12
lea addresses_D_ht+0x14b0f, %r8
nop
nop
nop
nop
nop
add $6373, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r8)
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x95ef, %rcx
add %r12, %r12
movw $0x5152, (%rcx)
inc %rcx

// Load
lea addresses_WT+0xdcf, %rcx
nop
nop
nop
cmp %r10, %r10
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
nop
nop
nop
nop
add %rcx, %rcx

// Load
mov $0xacf, %rsi
nop
dec %rdi
mov (%rsi), %rcx
nop
nop
nop
nop
nop
inc %r11

// Store
lea addresses_WC+0x1cdef, %r12
nop
and %rcx, %rcx
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_D+0x1eccf, %r10
sub $16101, %rcx
movw $0x5152, (%r10)
nop
sub $55406, %rcx

// Store
lea addresses_UC+0xa5ef, %r10
nop
nop
sub $321, %rsi
movl $0x51525354, (%r10)
nop
and %rsi, %rsi

// Faulty Load
lea addresses_WT+0x95ef, %rdi
add %r11, %r11
mov (%rdi), %r10
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_P', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'52': 8}
52 52 52 52 52 52 52 52
*/
