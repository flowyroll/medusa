.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rdi
lea addresses_UC_ht+0x13c06, %rbx
and $4696, %rbp
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
xor %r9, %r9
lea addresses_D_ht+0x11e86, %r10
nop
nop
nop
nop
nop
and $63375, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
nop
xor $36998, %r10
lea addresses_UC_ht+0x9e96, %r9
and $25997, %r14
mov (%r9), %ebx
nop
and $25222, %r9
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_A+0xcf06, %rdi
nop
nop
nop
dec %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rdi)
nop
sub %rbx, %rbx

// Store
mov $0x9468000000006a, %r13
nop
nop
nop
nop
nop
xor $42522, %rdi
movw $0x5152, (%r13)
nop
nop
sub %r13, %r13

// Store
lea addresses_D+0x5b06, %rbx
nop
nop
nop
nop
nop
and $54805, %rdx
movl $0x51525354, (%rbx)
nop
sub $43964, %r14

// Store
lea addresses_PSE+0x1d006, %rbx
inc %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
nop
nop
cmp $33282, %rbx

// Store
mov $0xdc6, %rdx
and %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
nop
add $45167, %rbx

// Faulty Load
lea addresses_RW+0x10006, %r14
cmp $41442, %r13
movups (%r14), %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_D', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_P', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'32': 2}
32 32
*/
