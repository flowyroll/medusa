.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1072c, %rsi
lea addresses_WT_ht+0xfc3a, %rdi
clflush (%rsi)
nop
nop
nop
sub %rdx, %rdx
mov $94, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x823a, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
nop
sub $31457, %rdx
lea addresses_WC_ht+0x148ca, %r14
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r14), %rdi
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x174ba, %rsi
lea addresses_normal_ht+0x13422, %rdi
nop
xor $30930, %r9
mov $102, %rcx
rep movsb
nop
nop
and $35898, %rbx
lea addresses_D_ht+0x1055a, %rsi
nop
sub $63186, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rsi)
nop
and $55921, %rdi
lea addresses_WC_ht+0x44fa, %rsi
lea addresses_A_ht+0x2cca, %rdi
xor $26202, %r8
mov $93, %rcx
rep movsw
nop
and %rbx, %rbx
lea addresses_UC_ht+0x15a3a, %rsi
lea addresses_D_ht+0x1e445, %rdi
clflush (%rsi)
sub %rbx, %rbx
mov $52, %rcx
rep movsq
nop
add $58680, %r14
lea addresses_WT_ht+0x1943a, %rdx
clflush (%rdx)
nop
and %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rdx)
nop
nop
dec %r14
lea addresses_normal_ht+0xb549, %r9
nop
nop
nop
cmp %rcx, %rcx
movb $0x61, (%r9)
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_WT+0x1423a, %r13
nop
cmp $32069, %rbx
movw $0x5152, (%r13)
nop
nop
nop
cmp %rbx, %rbx

// Load
lea addresses_WT+0x1423a, %rdi
nop
nop
nop
nop
add $25357, %rcx
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_WT+0x1c3a, %rcx
sub $55188, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
inc %rbx

// Store
lea addresses_normal+0xd1a2, %rdi
nop
nop
nop
nop
and %rcx, %rcx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
and $24822, %r11

// Store
lea addresses_US+0x1e83a, %r11
nop
nop
nop
nop
cmp $27042, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movaps %xmm4, (%r11)
nop
nop
cmp $57477, %r10

// Load
lea addresses_UC+0x65f8, %rbx
nop
nop
nop
nop
nop
add %r13, %r13
mov (%rbx), %r11
nop
xor %rax, %rax

// Store
lea addresses_RW+0x3a, %r11
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movaps %xmm0, (%r11)
nop
nop
add %r13, %r13

// Faulty Load
lea addresses_WT+0x1423a, %rax
nop
nop
add %r11, %r11
mov (%rax), %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': True, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'52': 66}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
