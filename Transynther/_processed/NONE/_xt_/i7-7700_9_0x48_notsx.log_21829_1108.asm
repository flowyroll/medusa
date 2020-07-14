.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x23bf, %rsi
lea addresses_UC_ht+0x97f5, %rdi
clflush (%rdi)
nop
nop
mfence
mov $106, %rcx
rep movsw
nop
nop
nop
nop
cmp $44618, %r13
lea addresses_D_ht+0x5165, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $51897, %rbx
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x15fb5, %r13
nop
nop
inc %rax
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
dec %rcx
lea addresses_normal_ht+0x1abf5, %rsi
lea addresses_WT_ht+0x11c29, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $62, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0x7df5, %rax
nop
nop
nop
nop
nop
add $569, %rdi
movups (%rax), %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0xa3f5, %rbx
nop
nop
cmp $43180, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm3
and $0xffffffffffffffc0, %rbx
vmovaps %ymm3, (%rbx)
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0xdabf, %rsi
lea addresses_WT_ht+0x1d9d5, %rdi
clflush (%rdi)
xor $28899, %r13
mov $4, %rcx
rep movsl
and %rax, %rax
lea addresses_A_ht+0x1a115, %rsi
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x4015, %rsi
lea addresses_UC+0x153f5, %rdi
nop
nop
nop
sub $55130, %r9
mov $15, %rcx
rep movsq
nop
nop
nop
and $49983, %r12

// Store
lea addresses_PSE+0x19b27, %rdi
nop
sub %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
and $46031, %r12

// Store
lea addresses_UC+0x2f9d, %rax
sub %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rax)
nop
add $52898, %r9

// Faulty Load
lea addresses_RW+0x2bf5, %r9
nop
nop
nop
xor %rcx, %rcx
movb (%r9), %al
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
