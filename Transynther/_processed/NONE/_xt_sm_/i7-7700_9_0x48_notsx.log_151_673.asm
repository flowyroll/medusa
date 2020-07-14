.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x110e6, %r9
nop
nop
nop
nop
add %r11, %r11
movups (%r9), %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
nop
inc %r9
lea addresses_UC_ht+0x16106, %r12
nop
nop
nop
xor %rdx, %rdx
movb (%r12), %r10b
nop
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x18a6, %rsi
lea addresses_WT_ht+0x17a6, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $18, %rcx
rep movsq
nop
nop
nop
add $43923, %r9
lea addresses_WC_ht+0x5fa6, %rbx
nop
nop
cmp $61314, %r12
mov (%rbx), %ecx
nop
nop
xor $27934, %rdx
lea addresses_A_ht+0x117a6, %rsi
lea addresses_normal_ht+0x66d6, %rdi
nop
nop
nop
nop
inc %r10
mov $126, %rcx
rep movsq
nop
dec %rsi
lea addresses_A_ht+0x178a6, %rdi
nop
nop
nop
inc %rsi
mov (%rdi), %r9
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x19ea6, %rsi
lea addresses_A_ht+0x567e, %rdi
nop
nop
nop
dec %r10
mov $41, %rcx
rep movsw
xor $22036, %rcx
lea addresses_D_ht+0x173a6, %r11
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%r11)
nop
nop
cmp $12347, %r9
lea addresses_A_ht+0x8366, %r9
nop
dec %rsi
movb (%r9), %bl
nop
nop
nop
nop
cmp $33223, %r10
lea addresses_WT_ht+0xdf3e, %r12
nop
nop
nop
sub $60253, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
nop
nop
add $36454, %rdx
lea addresses_WC_ht+0x14be, %rsi
lea addresses_normal_ht+0x197a6, %rdi
nop
nop
sub $51038, %r10
mov $0, %rcx
rep movsb
nop
nop
nop
add %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x12fa6, %r14
nop
xor $21439, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%r14)
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_RW+0x133a6, %rcx
nop
nop
add $12665, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_UC+0x8ba6, %rsi
nop
nop
xor %rcx, %rcx
movw $0x5152, (%rsi)
nop
cmp $61074, %rdi

// Faulty Load
lea addresses_RW+0x133a6, %r14
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r14), %r13w
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'58': 151}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
