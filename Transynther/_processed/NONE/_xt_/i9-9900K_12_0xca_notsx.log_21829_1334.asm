.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1c7, %rsi
lea addresses_D_ht+0x143e3, %rdi
and $41235, %rax
mov $71, %rcx
rep movsl
nop
nop
nop
xor $33389, %r11
lea addresses_WT_ht+0x1bde7, %r11
nop
nop
nop
sub $48146, %r15
mov (%r11), %di
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x7f27, %rsi
lea addresses_WT_ht+0x9b27, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %rbx, %rbx
mov $17, %rcx
rep movsq
nop
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0x10927, %rsi
nop
nop
cmp $41420, %r15
movb (%rsi), %bl
nop
cmp $38400, %rsi
lea addresses_A_ht+0xa02f, %rax
clflush (%rax)
nop
cmp %rdi, %rdi
mov (%rax), %rbx
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x1ef27, %rsi
lea addresses_D_ht+0x13d7, %rdi
nop
cmp $48407, %rbx
mov $119, %rcx
rep movsw
nop
add %rdi, %rdi
lea addresses_normal_ht+0xf64f, %rsi
lea addresses_WT_ht+0x1d887, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $8, %rcx
rep movsl
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x165a7, %rsi
nop
nop
nop
sub $8119, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rsi)
nop
sub $56412, %r15
lea addresses_WT_ht+0x19f27, %rsi
lea addresses_WC_ht+0x180cb, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $35, %rcx
rep movsq
nop
nop
add $28813, %rbx
lea addresses_D_ht+0x1b727, %rbx
sub $63801, %r13
movb $0x61, (%rbx)
nop
nop
nop
sub $63693, %rcx
lea addresses_normal_ht+0x1ef27, %r13
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r13)
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x2f27, %rbx
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%rbx)
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x165c9, %rsi
lea addresses_UC_ht+0x4e17, %rdi
nop
dec %r13
mov $16, %rcx
rep movsl
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0xc727, %rsi
lea addresses_WC_ht+0x7527, %rdi
nop
nop
nop
nop
sub $15109, %rbx
mov $44, %rcx
rep movsq
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1ac0f, %rsi
lea addresses_UC_ht+0x1c767, %rdi
nop
nop
nop
nop
sub $1384, %r13
mov $99, %rcx
rep movsw
and $38126, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_UC+0x12727, %rdi
nop
nop
nop
nop
cmp $50671, %rdx
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
