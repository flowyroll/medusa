.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xc72c, %rdi
nop
xor $28449, %rbx
movl $0x61626364, (%rdi)
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0x172c, %rsi
lea addresses_D_ht+0x1b58c, %rdi
clflush (%rdi)
nop
nop
cmp %rax, %rax
mov $23, %rcx
rep movsq
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x1481c, %r11
clflush (%r11)
nop
nop
add %r13, %r13
movups (%r11), %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x112c, %rsi
lea addresses_D_ht+0x1792c, %rdi
nop
nop
add %r8, %r8
mov $84, %rcx
rep movsl
dec %r8
lea addresses_WT_ht+0x1af90, %rbx
nop
nop
nop
add $22417, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm4
and $0xffffffffffffffc0, %rbx
vmovaps %ymm4, (%rbx)
nop
nop
nop
xor $40161, %rdi
lea addresses_D_ht+0x11284, %rax
cmp %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rax)
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1a6a4, %r15
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r15)
nop
nop
nop
nop
nop
and %r15, %r15

// REPMOV
lea addresses_UC+0x45a8, %rsi
lea addresses_normal+0x592c, %rdi
nop
inc %r13
mov $113, %rcx
rep movsl
nop
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_WT+0xc8d4, %rcx
nop
nop
nop
nop
nop
mfence
mov (%rcx), %rdi
nop
nop
nop
nop
nop
add $32726, %rdi

// Load
lea addresses_D+0xd12c, %r15
nop
nop
nop
nop
sub $46330, %rdi
vmovaps (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
nop
nop
nop
nop
nop
sub %r9, %r9

// Store
mov $0x52c, %r11
cmp %r13, %r13
movl $0x51525354, (%r11)
sub %rdi, %rdi

// Faulty Load
lea addresses_RW+0x592c, %r13
nop
nop
cmp $8039, %rsi
mov (%r13), %r15d
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_D', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'32': 3}
32 32 32
*/
