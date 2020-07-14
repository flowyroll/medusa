.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdx
lea addresses_UC_ht+0xc403, %rdx
clflush (%rdx)
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
and $0xffffffffffffffc0, %rdx
movntdq %xmm7, (%rdx)
nop
nop
xor $27188, %rbx
lea addresses_D_ht+0x10d5b, %rax
nop
nop
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rax)
nop
nop
xor %rax, %rax
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x8262, %rsi
nop
nop
add $1609, %rdx
movw $0x5152, (%rsi)
nop
nop
cmp $26093, %rcx

// Store
mov $0x7130b2000000059b, %r15
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x51525354, (%r15)
nop
cmp $51670, %rdi

// Store
mov $0xff9, %rdi
nop
xor $26077, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rdi)
sub %rdx, %rdx

// Store
lea addresses_A+0x1199b, %rcx
nop
nop
sub $59281, %r8
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
nop
xor $48724, %rcx

// Load
lea addresses_WT+0xf94b, %rdi
nop
nop
nop
nop
add %rax, %rax
mov (%rdi), %rcx

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rdx
nop
nop
dec %r8

// Store
lea addresses_PSE+0x1f17b, %r8
nop
nop
and $48122, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovaps %ymm0, (%r8)
cmp $32627, %r8

// Faulty Load
mov $0x7130b2000000059b, %rcx
nop
nop
nop
nop
nop
sub $30599, %r15
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 33}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
