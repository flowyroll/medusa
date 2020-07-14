.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x63ee, %rsi
lea addresses_WT_ht+0x8eee, %rdi
nop
nop
nop
xor %r8, %r8
mov $31, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x1896e, %r10
nop
nop
sub $761, %r11
mov (%r10), %cx
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1540e, %rsi
lea addresses_normal_ht+0x402e, %rdi
nop
sub $1929, %r13
mov $31, %rcx
rep movsb
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x19e09, %r10
nop
nop
nop
cmp %rsi, %rsi
mov (%r10), %r11w
xor $32046, %r10
lea addresses_WT_ht+0x808e, %rcx
clflush (%rcx)
sub %r8, %r8
movl $0x61626364, (%rcx)
nop
xor %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_PSE+0x140ee, %rax
nop
nop
dec %rbp
movb $0x51, (%rax)
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WC+0x172ee, %rax
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rax)
nop
sub %rbp, %rbp

// Store
mov $0x6fb2e20000000aee, %r10
nop
sub $48404, %r12
movl $0x51525354, (%r10)
nop
nop
xor %rcx, %rcx

// Store
lea addresses_UC+0x1582e, %r10
nop
dec %rbx
movl $0x51525354, (%r10)
inc %rbx

// Store
lea addresses_WC+0x80ee, %rcx
nop
nop
xor $60453, %rdx
movl $0x51525354, (%rcx)
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_UC+0x160ee, %r12
nop
nop
add %rbx, %rbx
movl $0x51525354, (%r12)
and %rbp, %rbp

// Store
lea addresses_WC+0xa38e, %rbx
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movaps %xmm2, (%rbx)
nop
nop
nop
nop
add $16282, %r12

// Load
lea addresses_WC+0x10cee, %rbx
nop
nop
nop
sub $15321, %r10
mov (%rbx), %cx
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_normal+0x1b8ee, %rbx
nop
cmp $58021, %rbp
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_normal+0x1b8ee, %r12
nop
nop
nop
cmp %rcx, %rcx
movb (%r12), %dl
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WC', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 10}}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'58': 1}
58
*/
