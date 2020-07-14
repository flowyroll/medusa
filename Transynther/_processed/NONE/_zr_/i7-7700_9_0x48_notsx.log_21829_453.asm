.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5a68, %rbx
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
sub $35729, %r10
lea addresses_UC_ht+0x9728, %rsi
lea addresses_UC_ht+0xf68, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r9
mov $117, %rcx
rep movsl
nop
nop
nop
nop
nop
and $60407, %r10
lea addresses_WC_ht+0xfd68, %r8
nop
nop
nop
nop
nop
inc %rdi
movb (%r8), %bl
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x39a8, %rdi
nop
cmp $48064, %r10
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
add $19497, %rsi
lea addresses_WC_ht+0x18f68, %rcx
nop
cmp $55636, %rbx
movw $0x6162, (%rcx)
nop
dec %r10
lea addresses_normal_ht+0x5b68, %rsi
lea addresses_UC_ht+0x14368, %rdi
clflush (%rdi)
nop
lfence
mov $113, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $13939, %rax
lea addresses_normal_ht+0x1c370, %r8
nop
nop
inc %r9
movb $0x61, (%r8)
nop
nop
sub $4532, %r10
lea addresses_UC_ht+0xdae8, %rax
nop
nop
nop
and %r10, %r10
movw $0x6162, (%rax)
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_PSE+0xcc90, %r12
add %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_normal+0x14368, %r9
nop
nop
nop
sub $33471, %rsi
movb $0x51, (%r9)
nop
nop
nop
nop
sub %rbx, %rbx

// Load
lea addresses_A+0x682c, %rsi
nop
nop
nop
add %r13, %r13
mov (%rsi), %rbx

// Exception!!!
nop
nop
mov (0), %rcx
xor %rbx, %rbx

// Store
lea addresses_US+0x1f168, %r12
nop
nop
nop
and $41766, %r10
mov $0x5152535455565758, %r9
movq %r9, (%r12)
nop
nop
sub $20880, %r10

// Load
lea addresses_normal+0x17368, %rcx
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rcx), %r12
nop
and $2787, %r9

// Store
mov $0x33451d0000000168, %rsi
nop
nop
nop
nop
dec %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_UC+0x19718, %r12
nop
add %r13, %r13
movl $0x51525354, (%r12)
and $222, %rsi

// Store
lea addresses_D+0x18768, %rsi
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_RW+0x1768, %r12
nop
nop
nop
nop
xor $8103, %r9
movl $0x51525354, (%r12)
add %r9, %r9

// Store
mov $0x768, %r10
nop
nop
nop
nop
nop
add $32717, %rsi
movw $0x5152, (%r10)
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_D+0x18768, %r12
and %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r12)
nop
add $15802, %r12

// Store
lea addresses_US+0x1c648, %rcx
xor $49884, %rbx
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
nop
nop
nop
nop
add $12486, %rcx

// Faulty Load
lea addresses_D+0x18768, %r13
nop
nop
nop
nop
nop
add $223, %r10
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
