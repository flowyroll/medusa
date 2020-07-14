.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xc372, %r10
nop
nop
nop
sub %r12, %r12
mov (%r10), %r8d
nop
cmp $36336, %rax
lea addresses_WC_ht+0x18372, %r9
nop
cmp $12677, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm4
and $0xffffffffffffffc0, %r9
movaps %xmm4, (%r9)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0xcd2, %rdi
nop
nop
nop
nop
nop
dec %rsi
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %r10
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0xeb72, %r12
nop
nop
nop
nop
nop
cmp $29162, %r9
movups (%r12), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xc992, %r10
clflush (%r10)
nop
nop
nop
nop
inc %rax
mov (%r10), %r9
nop
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x19b72, %r10
add %rax, %rax
mov (%r10), %r9
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x14f72, %r10
nop
nop
nop
nop
cmp %r12, %r12
mov (%r10), %rsi
nop
nop
inc %rsi
lea addresses_UC_ht+0x8702, %rdi
nop
nop
nop
nop
dec %rax
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x16e72, %rsi
lea addresses_normal_ht+0x1daf2, %rdi
nop
nop
and %r10, %r10
mov $28, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x1b72, %rdi
nop
nop
and %rax, %rax
movw $0x6162, (%rdi)
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x8b0e, %rsi
lea addresses_WT_ht+0x16672, %rdi
nop
nop
nop
nop
sub $63279, %r10
mov $93, %rcx
rep movsb
nop
nop
sub $53322, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
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
push %r15
push %r9
push %rax
push %rdi

// Load
mov $0x852, %r15
and $25018, %r12
movntdqa (%r15), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
nop
nop
inc %rdi

// Load
mov $0x474f300000000872, %r11
nop
sub $54332, %rax
mov (%r11), %r10
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_WT+0x372, %r10
nop
nop
nop
xor $36041, %r9
movups (%r10), %xmm4
vpextrq $0, %xmm4, %r11
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'39': 28}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
